import argparse

def parse_hex_line(line):
    if not line.startswith(":"):
        return None

    line = line.strip()[1:]
    byte_count = int(line[0:2], 16)
    address = int(line[2:6], 16)
    record_type = int(line[6:8], 16)
    data = bytes.fromhex(line[8:8 + byte_count * 2])

    return byte_count, address, record_type, data


def load_hex(filename):
    memory = {}
    base_addr = 0

    with open(filename, "r") as f:
        for line in f:
            parsed = parse_hex_line(line)
            if parsed is None:
                continue

            byte_count, address, record_type, data = parsed

            if record_type == 0x00:  # data
                for i in range(byte_count):
                    memory[base_addr + address + i] = data[i]

            elif record_type == 0x04:  # extended linear address
                base_addr = int.from_bytes(data, "big") << 16

            elif record_type == 0x01:  # EOF
                break

    return memory


def build_words(memory, word_bytes):
    if not memory:
        return []

    min_addr = min(memory.keys())
    max_addr = max(memory.keys())

    # Align start address
    start = min_addr - (min_addr % word_bytes)

    words = []

    for addr in range(start, max_addr + 1, word_bytes):
        word = 0
        for i in range(word_bytes):
            byte = memory.get(addr + i, 0)
            word |= byte << (8 * i)  # little-endian assembly

        words.append((addr, word))

    return words


def write_hex(words, word_bytes, output_file):
    with open(output_file, "w") as f:
        for addr, word in words:
            byte_count = word_bytes
            record_type = 0x00

            # Address is word index (not byte address)
            word_addr = addr // word_bytes

            data_bytes = word.to_bytes(word_bytes, "big")
            record = bytearray()
            record.append(byte_count)
            record.append((word_addr >> 8) & 0xFF)
            record.append(word_addr & 0xFF)
            record.append(record_type)
            record.extend(data_bytes)

            checksum = ((~sum(record) + 1) & 0xFF)

            line = ":" + "".join(f"{b:02X}" for b in record) + f"{checksum:02X}\n"
            f.write(line)

        f.write(":00000001FF\n")


def main():
    parser = argparse.ArgumentParser(description="Convert Intel HEX to word-per-line HEX")
    parser.add_argument("input", help="Input .hex file")
    parser.add_argument("output", help="Output .hex file")
    parser.add_argument("--word-size", type=int, default=32,
                        help="Word size in bits (default: 32)")

    args = parser.parse_args()

    word_bytes = args.word_size // 8

    memory = load_hex(args.input)
    words = build_words(memory, word_bytes)
    write_hex(words, word_bytes, args.output)

    print(f"Converted {args.input} → {args.output} ({args.word_size}-bit words)")


if __name__ == "__main__":
    main()