-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 25.1std (Release Build #1129)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2025 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from fadd_0002
-- VHDL created on Fri Jun 19 15:39:30 2026


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity fadd_0002 is
    port (
        a : in std_logic_vector(31 downto 0);  -- float32_m23
        b : in std_logic_vector(31 downto 0);  -- float32_m23
        opSel : in std_logic_vector(0 downto 0);  -- ufix1
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end fadd_0002;

architecture normal of fadd_0002 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signB_uid6_fpAddSubTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal restB_uid7_fpAddSubTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal invSignB_uid8_fpAddSubTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal muxSignB_uid9_fpAddSubTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal muxSignB_uid9_fpAddSubTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bOperand_uid10_fpAddSubTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid15_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid16_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xGTEy_uid17_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid17_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid17_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid17_fpAddSubTest_ieeeAdd_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sigY_uid18_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracY_uid19_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expY_uid20_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ypn_uid21_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (31 downto 0);
    signal aSig_uid25_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aSig_uid25_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bSig_uid26_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal bSig_uid26_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_aSig_uid30_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_aSig_uid30_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_aSig_uid31_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_aSig_uid31_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid33_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid35_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid36_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid37_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid37_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid38_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid39_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid40_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_bSig_uid44_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_bSig_uid44_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_bSig_uid45_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_bSig_uid45_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid47_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid47_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid48_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid49_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid50_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid51_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid51_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid52_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid54_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigA_uid59_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sigB_uid60_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid61_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid65_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid65_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid68_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid69_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid69_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid69_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid69_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (8 downto 0);
    signal oFracA_uid73_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracAE_uid74_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBR_uid76_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid77_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid77_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid81_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid81_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid81_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid81_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (26 downto 0);
    signal cAmA_uid85_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid86_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expInc_uid87_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid87_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid87_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid87_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid88_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid88_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid88_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid88_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid90_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (33 downto 0);
    signal wEP2AllOwE_uid91_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid92_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvf_uid93_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid94_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid95_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid95_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid96_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid96_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid97_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid98_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid99_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid100_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid101_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid102_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid103_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid104_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid105_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid106_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid107_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid108_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid109_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid110_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid111_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid112_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid113_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid114_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid115_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid117_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid118_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneFracRPostExc2_uid119_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid122_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid126_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid126_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid127_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid129_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid132_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (10 downto 0);
    signal vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cStage_uid134_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid143_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid149_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid151_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid156_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid157_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_n : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to8_uid164_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid164_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid165_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (18 downto 0);
    signal rightShiftStage0Idx1_uid166_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to16_uid167_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid167_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx2Rng16_uid168_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage0Idx2_uid169_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to24_uid170_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid170_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx3Rng24_uid171_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx3_uid172_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to2_uid175_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid175_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1Rng2_uid176_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx1_uid177_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to4_uid178_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid178_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx2Rng4_uid179_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStage1Idx2_uid180_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to6_uid181_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid181_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx3Rng6_uid182_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (20 downto 0);
    signal rightShiftStage1Idx3_uid183_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2Idx1Rng1_uid186_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (25 downto 0);
    signal rightShiftStage2Idx1_uid187_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid190_in : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid190_b : STD_LOGIC_VECTOR (26 downto 0);
    signal r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1_uid198_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx2_uid201_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx3Pad24_uid202_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3_uid204_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1_uid209_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2_uid212_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx3Pad6_uid213_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3_uid215_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1_uid220_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist6_vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_regInputs_uid97_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4_q : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- cAmA_uid85_fpAddSubTest_ieeeAdd(CONSTANT,84)
    cAmA_uid85_fpAddSubTest_ieeeAdd_q <= "11011";

    -- zs_uid129_lzCountVal_uid83_fpAddSubTest_ieeeAdd(CONSTANT,128)
    zs_uid129_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "0000000000000000";

    -- signB_uid6_fpAddSubTest(BITSELECT,5)@0
    signB_uid6_fpAddSubTest_b <= STD_LOGIC_VECTOR(b(31 downto 31));

    -- invSignB_uid8_fpAddSubTest(LOGICAL,7)@0
    invSignB_uid8_fpAddSubTest_q <= not (signB_uid6_fpAddSubTest_b);

    -- muxSignB_uid9_fpAddSubTest(MUX,8)@0
    muxSignB_uid9_fpAddSubTest_s <= opSel;
    muxSignB_uid9_fpAddSubTest_combproc: PROCESS (muxSignB_uid9_fpAddSubTest_s, en, invSignB_uid8_fpAddSubTest_q, signB_uid6_fpAddSubTest_b)
    BEGIN
        CASE (muxSignB_uid9_fpAddSubTest_s) IS
            WHEN "0" => muxSignB_uid9_fpAddSubTest_q <= invSignB_uid8_fpAddSubTest_q;
            WHEN "1" => muxSignB_uid9_fpAddSubTest_q <= signB_uid6_fpAddSubTest_b;
            WHEN OTHERS => muxSignB_uid9_fpAddSubTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- restB_uid7_fpAddSubTest(BITSELECT,6)@0
    restB_uid7_fpAddSubTest_b <= b(30 downto 0);

    -- bOperand_uid10_fpAddSubTest(BITJOIN,9)@0
    bOperand_uid10_fpAddSubTest_q <= muxSignB_uid9_fpAddSubTest_q & restB_uid7_fpAddSubTest_b;

    -- sigY_uid18_fpAddSubTest_ieeeAdd(BITSELECT,17)@0
    sigY_uid18_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(bOperand_uid10_fpAddSubTest_q(31 downto 31));

    -- expY_uid20_fpAddSubTest_ieeeAdd(BITSELECT,19)@0
    expY_uid20_fpAddSubTest_ieeeAdd_b <= bOperand_uid10_fpAddSubTest_q(30 downto 23);

    -- fracY_uid19_fpAddSubTest_ieeeAdd(BITSELECT,18)@0
    fracY_uid19_fpAddSubTest_ieeeAdd_b <= bOperand_uid10_fpAddSubTest_q(22 downto 0);

    -- ypn_uid21_fpAddSubTest_ieeeAdd(BITJOIN,20)@0
    ypn_uid21_fpAddSubTest_ieeeAdd_q <= sigY_uid18_fpAddSubTest_ieeeAdd_b & expY_uid20_fpAddSubTest_ieeeAdd_b & fracY_uid19_fpAddSubTest_ieeeAdd_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expFracY_uid16_fpAddSubTest_ieeeAdd(BITSELECT,15)@0
    expFracY_uid16_fpAddSubTest_ieeeAdd_b <= bOperand_uid10_fpAddSubTest_q(30 downto 0);

    -- expFracX_uid15_fpAddSubTest_ieeeAdd(BITSELECT,14)@0
    expFracX_uid15_fpAddSubTest_ieeeAdd_b <= a(30 downto 0);

    -- xGTEy_uid17_fpAddSubTest_ieeeAdd(COMPARE,16)@0
    xGTEy_uid17_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("00" & expFracX_uid15_fpAddSubTest_ieeeAdd_b);
    xGTEy_uid17_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("00" & expFracY_uid16_fpAddSubTest_ieeeAdd_b);
    xGTEy_uid17_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(xGTEy_uid17_fpAddSubTest_ieeeAdd_a) - UNSIGNED(xGTEy_uid17_fpAddSubTest_ieeeAdd_b));
    xGTEy_uid17_fpAddSubTest_ieeeAdd_n(0) <= not (xGTEy_uid17_fpAddSubTest_ieeeAdd_o(32));

    -- bSig_uid26_fpAddSubTest_ieeeAdd(MUX,25)@0
    bSig_uid26_fpAddSubTest_ieeeAdd_s <= xGTEy_uid17_fpAddSubTest_ieeeAdd_n;
    bSig_uid26_fpAddSubTest_ieeeAdd_combproc: PROCESS (bSig_uid26_fpAddSubTest_ieeeAdd_s, en, a, ypn_uid21_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (bSig_uid26_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => bSig_uid26_fpAddSubTest_ieeeAdd_q <= a;
            WHEN "1" => bSig_uid26_fpAddSubTest_ieeeAdd_q <= ypn_uid21_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => bSig_uid26_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigB_uid60_fpAddSubTest_ieeeAdd(BITSELECT,59)@0
    sigB_uid60_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(bSig_uid26_fpAddSubTest_ieeeAdd_q(31 downto 31));

    -- redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1(DELAY,240)
    redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigB_uid60_fpAddSubTest_ieeeAdd_b, xout => redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- aSig_uid25_fpAddSubTest_ieeeAdd(MUX,24)@0
    aSig_uid25_fpAddSubTest_ieeeAdd_s <= xGTEy_uid17_fpAddSubTest_ieeeAdd_n;
    aSig_uid25_fpAddSubTest_ieeeAdd_combproc: PROCESS (aSig_uid25_fpAddSubTest_ieeeAdd_s, en, ypn_uid21_fpAddSubTest_ieeeAdd_q, a)
    BEGIN
        CASE (aSig_uid25_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => aSig_uid25_fpAddSubTest_ieeeAdd_q <= ypn_uid21_fpAddSubTest_ieeeAdd_q;
            WHEN "1" => aSig_uid25_fpAddSubTest_ieeeAdd_q <= a;
            WHEN OTHERS => aSig_uid25_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigA_uid59_fpAddSubTest_ieeeAdd(BITSELECT,58)@0
    sigA_uid59_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(aSig_uid25_fpAddSubTest_ieeeAdd_q(31 downto 31));

    -- redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1(DELAY,242)
    redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigA_uid59_fpAddSubTest_ieeeAdd_b, xout => redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- effSub_uid61_fpAddSubTest_ieeeAdd(LOGICAL,60)@1
    effSub_uid61_fpAddSubTest_ieeeAdd_q <= redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1_q xor redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1_q;

    -- cstAllZWE_uid29_fpAddSubTest_ieeeAdd(CONSTANT,28)
    cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q <= "00000000";

    -- exp_bSig_uid44_fpAddSubTest_ieeeAdd(BITSELECT,43)@0
    exp_bSig_uid44_fpAddSubTest_ieeeAdd_in <= bSig_uid26_fpAddSubTest_ieeeAdd_q(30 downto 0);
    exp_bSig_uid44_fpAddSubTest_ieeeAdd_b <= exp_bSig_uid44_fpAddSubTest_ieeeAdd_in(30 downto 23);

    -- excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd(LOGICAL,45)@0 + 1
    excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_qi <= "1" WHEN exp_bSig_uid44_fpAddSubTest_ieeeAdd_b = cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q ELSE "0";
    excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_qi, xout => excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd(LOGICAL,52)@1
    InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q <= not (excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q);

    -- cstZeroWF_uid28_fpAddSubTest_ieeeAdd(CONSTANT,27)
    cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q <= "00000000000000000000000";

    -- frac_bSig_uid45_fpAddSubTest_ieeeAdd(BITSELECT,44)@0
    frac_bSig_uid45_fpAddSubTest_ieeeAdd_in <= bSig_uid26_fpAddSubTest_ieeeAdd_q(22 downto 0);
    frac_bSig_uid45_fpAddSubTest_ieeeAdd_b <= frac_bSig_uid45_fpAddSubTest_ieeeAdd_in(22 downto 0);

    -- redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1(DELAY,249)
    redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_bSig_uid45_fpAddSubTest_ieeeAdd_b, xout => redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracBz_uid65_fpAddSubTest_ieeeAdd(MUX,64)@1
    fracBz_uid65_fpAddSubTest_ieeeAdd_s <= excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q;
    fracBz_uid65_fpAddSubTest_ieeeAdd_combproc: PROCESS (fracBz_uid65_fpAddSubTest_ieeeAdd_s, en, redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1_q, cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (fracBz_uid65_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => fracBz_uid65_fpAddSubTest_ieeeAdd_q <= redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1_q;
            WHEN "1" => fracBz_uid65_fpAddSubTest_ieeeAdd_q <= cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => fracBz_uid65_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracB_uid68_fpAddSubTest_ieeeAdd(BITJOIN,67)@1
    oFracB_uid68_fpAddSubTest_ieeeAdd_q <= InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q & fracBz_uid65_fpAddSubTest_ieeeAdd_q;

    -- oFracBR_uid76_fpAddSubTest_ieeeAdd(BITJOIN,75)@1
    oFracBR_uid76_fpAddSubTest_ieeeAdd_q <= GND_q & oFracB_uid68_fpAddSubTest_ieeeAdd_q & GND_q & GND_q;

    -- oFracBREX_uid77_fpAddSubTest_ieeeAdd(LOGICAL,76)@1
    oFracBREX_uid77_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid61_fpAddSubTest_ieeeAdd_q(0)) & effSub_uid61_fpAddSubTest_ieeeAdd_q));
    oFracBREX_uid77_fpAddSubTest_ieeeAdd_q <= oFracBR_uid76_fpAddSubTest_ieeeAdd_q xor oFracBREX_uid77_fpAddSubTest_ieeeAdd_b;

    -- oFracBREXC2_uid78_fpAddSubTest_ieeeAdd(ADD,77)@1
    oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("0" & oFracBREX_uid77_fpAddSubTest_ieeeAdd_q);
    oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("000000000000000000000000000" & effSub_uid61_fpAddSubTest_ieeeAdd_q);
    oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_a) + UNSIGNED(oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_b));
    oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_q <= oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_o(27 downto 0);

    -- oFracBREXC2_uid79_fpAddSubTest_ieeeAdd(BITSELECT,78)@1
    oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_in <= STD_LOGIC_VECTOR(oFracBREXC2_uid78_fpAddSubTest_ieeeAdd_q(26 downto 0));
    oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_in(26 downto 0));

    -- xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,159)@1
    xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b(26 downto 26));

    -- redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1(DELAY,231)
    redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b, xout => redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- shiftOutConstant_to27_uid190(BITSELECT,189)@2
    shiftOutConstant_to27_uid190_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1_q(0)) & redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1_q));
    shiftOutConstant_to27_uid190_b <= STD_LOGIC_VECTOR(shiftOutConstant_to27_uid190_in(26 downto 0));

    -- rightShiftStage2Idx1Rng1_uid186_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,185)@2
    rightShiftStage2Idx1Rng1_uid186_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q(26 downto 1);

    -- rightShiftStage2Idx1_uid187_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,186)@2
    rightShiftStage2Idx1_uid187_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= redist3_xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b_1_q & rightShiftStage2Idx1Rng1_uid186_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to6_uid181(BITSELECT,180)@1
    seMsb_to6_uid181_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to6_uid181_b <= STD_LOGIC_VECTOR(seMsb_to6_uid181_in(5 downto 0));

    -- rightShiftStage1Idx3Rng6_uid182_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,181)@1
    rightShiftStage1Idx3Rng6_uid182_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q(26 downto 6);

    -- rightShiftStage1Idx3_uid183_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,182)@1
    rightShiftStage1Idx3_uid183_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to6_uid181_b & rightShiftStage1Idx3Rng6_uid182_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to4_uid178(BITSELECT,177)@1
    seMsb_to4_uid178_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to4_uid178_b <= STD_LOGIC_VECTOR(seMsb_to4_uid178_in(3 downto 0));

    -- rightShiftStage1Idx2Rng4_uid179_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,178)@1
    rightShiftStage1Idx2Rng4_uid179_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q(26 downto 4);

    -- rightShiftStage1Idx2_uid180_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,179)@1
    rightShiftStage1Idx2_uid180_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to4_uid178_b & rightShiftStage1Idx2Rng4_uid179_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to2_uid175(BITSELECT,174)@1
    seMsb_to2_uid175_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to2_uid175_b <= STD_LOGIC_VECTOR(seMsb_to2_uid175_in(1 downto 0));

    -- rightShiftStage1Idx1Rng2_uid176_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,175)@1
    rightShiftStage1Idx1Rng2_uid176_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q(26 downto 2);

    -- rightShiftStage1Idx1_uid177_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,176)@1
    rightShiftStage1Idx1_uid177_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to2_uid175_b & rightShiftStage1Idx1Rng2_uid176_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to24_uid170(BITSELECT,169)@1
    seMsb_to24_uid170_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to24_uid170_b <= STD_LOGIC_VECTOR(seMsb_to24_uid170_in(23 downto 0));

    -- rightShiftStage0Idx3Rng24_uid171_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,170)@1
    rightShiftStage0Idx3Rng24_uid171_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b(26 downto 24);

    -- rightShiftStage0Idx3_uid172_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,171)@1
    rightShiftStage0Idx3_uid172_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to24_uid170_b & rightShiftStage0Idx3Rng24_uid171_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to16_uid167(BITSELECT,166)@1
    seMsb_to16_uid167_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to16_uid167_b <= STD_LOGIC_VECTOR(seMsb_to16_uid167_in(15 downto 0));

    -- rightShiftStage0Idx2Rng16_uid168_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,167)@1
    rightShiftStage0Idx2Rng16_uid168_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b(26 downto 16);

    -- rightShiftStage0Idx2_uid169_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,168)@1
    rightShiftStage0Idx2_uid169_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to16_uid167_b & rightShiftStage0Idx2Rng16_uid168_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- seMsb_to8_uid164(BITSELECT,163)@1
    seMsb_to8_uid164_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b(0)) & xMSB_uid160_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
    seMsb_to8_uid164_b <= STD_LOGIC_VECTOR(seMsb_to8_uid164_in(7 downto 0));

    -- rightShiftStage0Idx1Rng8_uid165_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITSELECT,164)@1
    rightShiftStage0Idx1Rng8_uid165_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b(26 downto 8);

    -- rightShiftStage0Idx1_uid166_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(BITJOIN,165)@1
    rightShiftStage0Idx1_uid166_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= seMsb_to8_uid164_b & rightShiftStage0Idx1Rng8_uid165_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b;

    -- rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(MUX,173)@1
    rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s <= rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_b;
    rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_combproc: PROCESS (rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s, en, oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b, rightShiftStage0Idx1_uid166_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q, rightShiftStage0Idx2_uid169_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q, rightShiftStage0Idx3_uid172_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s) IS
            WHEN "00" => rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= oFracBREXC2_uid79_fpAddSubTest_ieeeAdd_b;
            WHEN "01" => rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage0Idx1_uid166_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN "10" => rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage0Idx2_uid169_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN "11" => rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage0Idx3_uid172_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1(DELAY,250)
    redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_bSig_uid44_fpAddSubTest_ieeeAdd_b, xout => redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- exp_aSig_uid30_fpAddSubTest_ieeeAdd(BITSELECT,29)@0
    exp_aSig_uid30_fpAddSubTest_ieeeAdd_in <= aSig_uid25_fpAddSubTest_ieeeAdd_q(30 downto 0);
    exp_aSig_uid30_fpAddSubTest_ieeeAdd_b <= exp_aSig_uid30_fpAddSubTest_ieeeAdd_in(30 downto 23);

    -- redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1(DELAY,254)
    redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_aSig_uid30_fpAddSubTest_ieeeAdd_b, xout => redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expAmExpB_uid69_fpAddSubTest_ieeeAdd(SUB,68)@1
    expAmExpB_uid69_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("0" & redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1_q);
    expAmExpB_uid69_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("0" & redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1_q);
    expAmExpB_uid69_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid69_fpAddSubTest_ieeeAdd_a) - UNSIGNED(expAmExpB_uid69_fpAddSubTest_ieeeAdd_b));
    expAmExpB_uid69_fpAddSubTest_ieeeAdd_q <= expAmExpB_uid69_fpAddSubTest_ieeeAdd_o(8 downto 0);

    -- rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select(BITSELECT,223)@1
    rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_in <= expAmExpB_uid69_fpAddSubTest_ieeeAdd_q(4 downto 0);
    rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_b <= rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_in(4 downto 3);
    rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_c <= rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_in(2 downto 1);
    rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d <= rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_in(0 downto 0);

    -- rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(MUX,184)@1 + 1
    rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s <= rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_c;
    rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s) IS
                    WHEN "00" => rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage0_uid174_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
                    WHEN "01" => rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage1Idx1_uid177_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
                    WHEN "10" => rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage1Idx2_uid180_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
                    WHEN "11" => rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage1Idx3_uid183_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
                    WHEN OTHERS => rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- redist2_rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d_1(DELAY,230)
    redist2_rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d, xout => redist2_rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(MUX,188)@2
    rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s <= redist2_rightShiftStageSel4Dto3_uid173_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_merged_bit_select_d_1_q;
    rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_combproc: PROCESS (rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s, en, rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q, rightShiftStage2Idx1_uid187_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage1_uid185_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN "1" => rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage2Idx1_uid187_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(COMPARE,162)@1 + 1
    shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid69_fpAddSubTest_ieeeAdd_q);
    shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("000000" & cAmA_uid85_fpAddSubTest_ieeeAdd_q);
    shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_a) - UNSIGNED(shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_b));
            END IF;
        END IF;
    END PROCESS;
    shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_n(0) <= not (shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_o(10));

    -- r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd(MUX,191)@2
    r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s <= shiftedOut_uid163_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_n;
    r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_combproc: PROCESS (r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s, en, rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q, shiftOutConstant_to27_uid190_b)
    BEGIN
        CASE (r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= rightShiftStage2_uid189_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q;
            WHEN "1" => r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= shiftOutConstant_to27_uid190_b;
            WHEN OTHERS => r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- frac_aSig_uid31_fpAddSubTest_ieeeAdd(BITSELECT,30)@0
    frac_aSig_uid31_fpAddSubTest_ieeeAdd_in <= aSig_uid25_fpAddSubTest_ieeeAdd_q(22 downto 0);
    frac_aSig_uid31_fpAddSubTest_ieeeAdd_b <= frac_aSig_uid31_fpAddSubTest_ieeeAdd_in(22 downto 0);

    -- redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2(DELAY,253)
    redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_aSig_uid31_fpAddSubTest_ieeeAdd_b, xout => redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- oFracA_uid73_fpAddSubTest_ieeeAdd(BITJOIN,72)@2
    oFracA_uid73_fpAddSubTest_ieeeAdd_q <= VCC_q & redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2_q;

    -- oFracAE_uid74_fpAddSubTest_ieeeAdd(BITJOIN,73)@2
    oFracAE_uid74_fpAddSubTest_ieeeAdd_q <= GND_q & oFracA_uid73_fpAddSubTest_ieeeAdd_q & GND_q & GND_q;

    -- fracAddResult_uid81_fpAddSubTest_ieeeAdd(ADD,80)@2
    fracAddResult_uid81_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => oFracAE_uid74_fpAddSubTest_ieeeAdd_q(26)) & oFracAE_uid74_fpAddSubTest_ieeeAdd_q));
    fracAddResult_uid81_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q(26)) & r_uid192_alignmentShifter_uid80_fpAddSubTest_ieeeAdd_q));
    fracAddResult_uid81_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(SIGNED(fracAddResult_uid81_fpAddSubTest_ieeeAdd_a) + SIGNED(fracAddResult_uid81_fpAddSubTest_ieeeAdd_b));
    fracAddResult_uid81_fpAddSubTest_ieeeAdd_q <= fracAddResult_uid81_fpAddSubTest_ieeeAdd_o(27 downto 0);

    -- fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd(BITSELECT,81)@2
    fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_in <= fracAddResult_uid81_fpAddSubTest_ieeeAdd_q(26 downto 0);
    fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b <= fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_in(26 downto 0);

    -- redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1(DELAY,237)
    redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b, xout => redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd(BITSELECT,129)@3
    rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b <= redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1_q(26 downto 11);

    -- vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd(LOGICAL,130)@3
    vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "1" WHEN rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b = zs_uid129_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- redist6_vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1(DELAY,234)
    redist6_vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q, xout => redist6_vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd(BITSELECT,132)@3
    vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_in <= redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1_q(10 downto 0);
    vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b <= vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_in(10 downto 0);

    -- mO_uid132_lzCountVal_uid83_fpAddSubTest_ieeeAdd(CONSTANT,131)
    mO_uid132_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "11111";

    -- cStage_uid134_lzCountVal_uid83_fpAddSubTest_ieeeAdd(BITJOIN,133)@3
    cStage_uid134_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b & mO_uid132_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;

    -- vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd(MUX,135)@3
    vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s <= vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;
    vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_combproc: PROCESS (vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s, en, rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b, cStage_uid134_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= rVStage_uid130_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b;
            WHEN "1" => vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= cStage_uid134_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select(BITSELECT,224)@3
    rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b <= vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(15 downto 8);
    rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c <= vStagei_uid136_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(7 downto 0);

    -- vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd(LOGICAL,138)@3
    vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "1" WHEN rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b = cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- redist4_vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1(DELAY,232)
    redist4_vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q, xout => redist4_vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- zs_uid143_lzCountVal_uid83_fpAddSubTest_ieeeAdd(CONSTANT,142)
    zs_uid143_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "0000";

    -- vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd(MUX,141)@3
    vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s <= vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;
    vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_combproc: PROCESS (vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s, en, rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b, rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b;
            WHEN "1" => vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= rVStage_uid138_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select(BITSELECT,225)@3
    rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b <= vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(7 downto 4);
    rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c <= vStagei_uid142_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(3 downto 0);

    -- vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd(LOGICAL,144)@3 + 1
    vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_qi <= "1" WHEN rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b = zs_uid143_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q ELSE "0";
    vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_qi, xout => vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- zs_uid149_lzCountVal_uid83_fpAddSubTest_ieeeAdd(CONSTANT,148)
    zs_uid149_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "00";

    -- redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1(DELAY,229)
    redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c, xout => redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1(DELAY,228)
    redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b, xout => redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd(MUX,147)@4
    vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s <= vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;
    vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_combproc: PROCESS (vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s, en, redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1_q, redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= redist0_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= redist1_rVStage_uid144_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select(BITSELECT,226)@4
    rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b <= vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(3 downto 2);
    rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c <= vStagei_uid148_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(1 downto 0);

    -- vCount_uid151_lzCountVal_uid83_fpAddSubTest_ieeeAdd(LOGICAL,150)@4
    vCount_uid151_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "1" WHEN rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b = zs_uid149_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd(MUX,153)@4
    vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s <= vCount_uid151_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;
    vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_combproc: PROCESS (vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s, en, rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b, rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_b;
            WHEN "1" => vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= rVStage_uid150_lzCountVal_uid83_fpAddSubTest_ieeeAdd_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid156_lzCountVal_uid83_fpAddSubTest_ieeeAdd(BITSELECT,155)@4
    rVStage_uid156_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b <= vStagei_uid154_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(1 downto 1);

    -- vCount_uid157_lzCountVal_uid83_fpAddSubTest_ieeeAdd(LOGICAL,156)@4
    vCount_uid157_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= "1" WHEN rVStage_uid156_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b = GND_q ELSE "0";

    -- r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd(BITJOIN,157)@4
    r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q <= redist6_vCount_uid131_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q & redist4_vCount_uid139_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q_1_q & vCount_uid145_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q & vCount_uid151_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q & vCount_uid157_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;

    -- aMinusA_uid86_fpAddSubTest_ieeeAdd(LOGICAL,85)@4
    aMinusA_uid86_fpAddSubTest_ieeeAdd_q <= "1" WHEN r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q = cAmA_uid85_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- invAMinusA_uid108_fpAddSubTest_ieeeAdd(LOGICAL,107)@4
    invAMinusA_uid108_fpAddSubTest_ieeeAdd_q <= not (aMinusA_uid86_fpAddSubTest_ieeeAdd_q);

    -- redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4(DELAY,243)
    redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_sigA_uid59_fpAddSubTest_ieeeAdd_b_1_q, xout => redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- cstAllOWE_uid27_fpAddSubTest_ieeeAdd(CONSTANT,26)
    cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q <= "11111111";

    -- expXIsMax_uid47_fpAddSubTest_ieeeAdd(LOGICAL,46)@1 + 1
    expXIsMax_uid47_fpAddSubTest_ieeeAdd_qi <= "1" WHEN redist22_exp_bSig_uid44_fpAddSubTest_ieeeAdd_b_1_q = cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q ELSE "0";
    expXIsMax_uid47_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid47_fpAddSubTest_ieeeAdd_qi, xout => expXIsMax_uid47_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3(DELAY,247)
    redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid47_fpAddSubTest_ieeeAdd_q, xout => redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- invExpXIsMax_uid52_fpAddSubTest_ieeeAdd(LOGICAL,51)@4
    invExpXIsMax_uid52_fpAddSubTest_ieeeAdd_q <= not (redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3_q);

    -- redist16_InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q_3(DELAY,244)
    redist16_InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q, xout => redist16_InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excR_bSig_uid54_fpAddSubTest_ieeeAdd(LOGICAL,53)@4
    excR_bSig_uid54_fpAddSubTest_ieeeAdd_q <= redist16_InvExpXIsZero_uid53_fpAddSubTest_ieeeAdd_q_3_q and invExpXIsMax_uid52_fpAddSubTest_ieeeAdd_q;

    -- redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4(DELAY,255)
    redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist26_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_1_q, xout => redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid33_fpAddSubTest_ieeeAdd(LOGICAL,32)@4
    expXIsMax_uid33_fpAddSubTest_ieeeAdd_q <= "1" WHEN redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4_q = cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- invExpXIsMax_uid38_fpAddSubTest_ieeeAdd(LOGICAL,37)@4
    invExpXIsMax_uid38_fpAddSubTest_ieeeAdd_q <= not (expXIsMax_uid33_fpAddSubTest_ieeeAdd_q);

    -- excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd(LOGICAL,31)@4
    excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd_q <= "1" WHEN redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4_q = cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- InvExpXIsZero_uid39_fpAddSubTest_ieeeAdd(LOGICAL,38)@4
    InvExpXIsZero_uid39_fpAddSubTest_ieeeAdd_q <= not (excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd_q);

    -- excR_aSig_uid40_fpAddSubTest_ieeeAdd(LOGICAL,39)@4
    excR_aSig_uid40_fpAddSubTest_ieeeAdd_q <= InvExpXIsZero_uid39_fpAddSubTest_ieeeAdd_q and invExpXIsMax_uid38_fpAddSubTest_ieeeAdd_q;

    -- signRReg_uid109_fpAddSubTest_ieeeAdd(LOGICAL,108)@4
    signRReg_uid109_fpAddSubTest_ieeeAdd_q <= excR_aSig_uid40_fpAddSubTest_ieeeAdd_q and excR_bSig_uid54_fpAddSubTest_ieeeAdd_q and redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q and invAMinusA_uid108_fpAddSubTest_ieeeAdd_q;

    -- redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4(DELAY,241)
    redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist12_sigB_uid60_fpAddSubTest_ieeeAdd_b_1_q, xout => redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4(DELAY,248)
    redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q, xout => redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- excAZBZSigASigB_uid113_fpAddSubTest_ieeeAdd(LOGICAL,112)@4
    excAZBZSigASigB_uid113_fpAddSubTest_ieeeAdd_q <= excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd_q and redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4_q and redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q and redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4_q;

    -- excBZARSigA_uid114_fpAddSubTest_ieeeAdd(LOGICAL,113)@4
    excBZARSigA_uid114_fpAddSubTest_ieeeAdd_q <= redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4_q and excR_aSig_uid40_fpAddSubTest_ieeeAdd_q and redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q;

    -- signRZero_uid115_fpAddSubTest_ieeeAdd(LOGICAL,114)@4
    signRZero_uid115_fpAddSubTest_ieeeAdd_q <= excBZARSigA_uid114_fpAddSubTest_ieeeAdd_q or excAZBZSigASigB_uid113_fpAddSubTest_ieeeAdd_q;

    -- fracXIsZero_uid48_fpAddSubTest_ieeeAdd(LOGICAL,47)@1 + 1
    fracXIsZero_uid48_fpAddSubTest_ieeeAdd_qi <= "1" WHEN cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q = redist21_frac_bSig_uid45_fpAddSubTest_ieeeAdd_b_1_q ELSE "0";
    fracXIsZero_uid48_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid48_fpAddSubTest_ieeeAdd_qi, xout => fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3(DELAY,246)
    redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q, xout => redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_bSig_uid50_fpAddSubTest_ieeeAdd(LOGICAL,49)@4
    excI_bSig_uid50_fpAddSubTest_ieeeAdd_q <= redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3_q and redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3_q;

    -- sigBBInf_uid110_fpAddSubTest_ieeeAdd(LOGICAL,109)@4
    sigBBInf_uid110_fpAddSubTest_ieeeAdd_q <= redist13_sigB_uid60_fpAddSubTest_ieeeAdd_b_4_q and excI_bSig_uid50_fpAddSubTest_ieeeAdd_q;

    -- fracXIsZero_uid34_fpAddSubTest_ieeeAdd(LOGICAL,33)@2 + 1
    fracXIsZero_uid34_fpAddSubTest_ieeeAdd_qi <= "1" WHEN cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q = redist25_frac_aSig_uid31_fpAddSubTest_ieeeAdd_b_2_q ELSE "0";
    fracXIsZero_uid34_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_fpAddSubTest_ieeeAdd_qi, xout => fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2(DELAY,252)
    redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q, xout => redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_aSig_uid36_fpAddSubTest_ieeeAdd(LOGICAL,35)@4
    excI_aSig_uid36_fpAddSubTest_ieeeAdd_q <= expXIsMax_uid33_fpAddSubTest_ieeeAdd_q and redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2_q;

    -- sigAAInf_uid111_fpAddSubTest_ieeeAdd(LOGICAL,110)@4
    sigAAInf_uid111_fpAddSubTest_ieeeAdd_q <= redist15_sigA_uid59_fpAddSubTest_ieeeAdd_b_4_q and excI_aSig_uid36_fpAddSubTest_ieeeAdd_q;

    -- signRInf_uid112_fpAddSubTest_ieeeAdd(LOGICAL,111)@4
    signRInf_uid112_fpAddSubTest_ieeeAdd_q <= sigAAInf_uid111_fpAddSubTest_ieeeAdd_q or sigBBInf_uid110_fpAddSubTest_ieeeAdd_q;

    -- signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd(LOGICAL,115)@4 + 1
    signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_qi <= signRInf_uid112_fpAddSubTest_ieeeAdd_q or signRZero_uid115_fpAddSubTest_ieeeAdd_q or signRReg_uid109_fpAddSubTest_ieeeAdd_q;
    signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_qi, xout => signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid49_fpAddSubTest_ieeeAdd(LOGICAL,48)@4
    fracXIsNotZero_uid49_fpAddSubTest_ieeeAdd_q <= not (redist18_fracXIsZero_uid48_fpAddSubTest_ieeeAdd_q_3_q);

    -- excN_bSig_uid51_fpAddSubTest_ieeeAdd(LOGICAL,50)@4 + 1
    excN_bSig_uid51_fpAddSubTest_ieeeAdd_qi <= redist19_expXIsMax_uid47_fpAddSubTest_ieeeAdd_q_3_q and fracXIsNotZero_uid49_fpAddSubTest_ieeeAdd_q;
    excN_bSig_uid51_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid51_fpAddSubTest_ieeeAdd_qi, xout => excN_bSig_uid51_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid35_fpAddSubTest_ieeeAdd(LOGICAL,34)@4
    fracXIsNotZero_uid35_fpAddSubTest_ieeeAdd_q <= not (redist24_fracXIsZero_uid34_fpAddSubTest_ieeeAdd_q_2_q);

    -- excN_aSig_uid37_fpAddSubTest_ieeeAdd(LOGICAL,36)@4 + 1
    excN_aSig_uid37_fpAddSubTest_ieeeAdd_qi <= expXIsMax_uid33_fpAddSubTest_ieeeAdd_q and fracXIsNotZero_uid35_fpAddSubTest_ieeeAdd_q;
    excN_aSig_uid37_fpAddSubTest_ieeeAdd_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_aSig_uid37_fpAddSubTest_ieeeAdd_qi, xout => excN_aSig_uid37_fpAddSubTest_ieeeAdd_q, ena => en(0), clk => clk, aclr => areset );

    -- excRNaN2_uid103_fpAddSubTest_ieeeAdd(LOGICAL,102)@5
    excRNaN2_uid103_fpAddSubTest_ieeeAdd_q <= excN_aSig_uid37_fpAddSubTest_ieeeAdd_q or excN_bSig_uid51_fpAddSubTest_ieeeAdd_q;

    -- redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4(DELAY,239)
    redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid61_fpAddSubTest_ieeeAdd_q, xout => redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1(DELAY,245)
    redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid50_fpAddSubTest_ieeeAdd_q, xout => redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1(DELAY,251)
    redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_aSig_uid36_fpAddSubTest_ieeeAdd_q, xout => redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- excAIBISub_uid104_fpAddSubTest_ieeeAdd(LOGICAL,103)@5
    excAIBISub_uid104_fpAddSubTest_ieeeAdd_q <= redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1_q and redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1_q and redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4_q;

    -- excRNaN_uid105_fpAddSubTest_ieeeAdd(LOGICAL,104)@5
    excRNaN_uid105_fpAddSubTest_ieeeAdd_q <= excAIBISub_uid104_fpAddSubTest_ieeeAdd_q or excRNaN2_uid103_fpAddSubTest_ieeeAdd_q;

    -- invExcRNaN_uid117_fpAddSubTest_ieeeAdd(LOGICAL,116)@5
    invExcRNaN_uid117_fpAddSubTest_ieeeAdd_q <= not (excRNaN_uid105_fpAddSubTest_ieeeAdd_q);

    -- signRPostExc_uid118_fpAddSubTest_ieeeAdd(LOGICAL,117)@5
    signRPostExc_uid118_fpAddSubTest_ieeeAdd_q <= invExcRNaN_uid117_fpAddSubTest_ieeeAdd_q and signRInfRZRReg_uid116_fpAddSubTest_ieeeAdd_q;

    -- expInc_uid87_fpAddSubTest_ieeeAdd(ADD,86)@4
    expInc_uid87_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("0" & redist27_exp_aSig_uid30_fpAddSubTest_ieeeAdd_b_4_q);
    expInc_uid87_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    expInc_uid87_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid87_fpAddSubTest_ieeeAdd_a) + UNSIGNED(expInc_uid87_fpAddSubTest_ieeeAdd_b));
    expInc_uid87_fpAddSubTest_ieeeAdd_q <= expInc_uid87_fpAddSubTest_ieeeAdd_o(8 downto 0);

    -- expPostNorm_uid88_fpAddSubTest_ieeeAdd(SUB,87)@4
    expPostNorm_uid88_fpAddSubTest_ieeeAdd_a <= STD_LOGIC_VECTOR("0" & expInc_uid87_fpAddSubTest_ieeeAdd_q);
    expPostNorm_uid88_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR("00000" & r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q);
    expPostNorm_uid88_fpAddSubTest_ieeeAdd_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid88_fpAddSubTest_ieeeAdd_a) - UNSIGNED(expPostNorm_uid88_fpAddSubTest_ieeeAdd_b));
    expPostNorm_uid88_fpAddSubTest_ieeeAdd_q <= expPostNorm_uid88_fpAddSubTest_ieeeAdd_o(9 downto 0);

    -- leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,218)@4
    leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q(25 downto 0);
    leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(25 downto 0);

    -- leftShiftStage2Idx1_uid220_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,219)@4
    leftShiftStage2Idx1_uid220_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage2Idx1Rng1_uid219_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,213)@4
    leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q(20 downto 0);
    leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(20 downto 0);

    -- leftShiftStage1Idx3Pad6_uid213_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(CONSTANT,212)
    leftShiftStage1Idx3Pad6_uid213_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= "000000";

    -- leftShiftStage1Idx3_uid215_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,214)@4
    leftShiftStage1Idx3_uid215_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx3Rng6_uid214_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & leftShiftStage1Idx3Pad6_uid213_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;

    -- leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,210)@4
    leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q(22 downto 0);
    leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(22 downto 0);

    -- leftShiftStage1Idx2_uid212_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,211)@4
    leftShiftStage1Idx2_uid212_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx2Rng4_uid211_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & zs_uid143_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;

    -- leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,207)@4
    leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q(24 downto 0);
    leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(24 downto 0);

    -- leftShiftStage1Idx1_uid209_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,208)@4
    leftShiftStage1Idx1_uid209_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx1Rng2_uid208_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & zs_uid149_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;

    -- leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,202)@4
    leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q(2 downto 0);
    leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(2 downto 0);

    -- leftShiftStage0Idx3Pad24_uid202_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(CONSTANT,201)
    leftShiftStage0Idx3Pad24_uid202_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid204_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,203)@4
    leftShiftStage0Idx3_uid204_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0Idx3Rng24_uid203_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & leftShiftStage0Idx3Pad24_uid202_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;

    -- redist5_vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b_1(DELAY,233)
    redist5_vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b, xout => redist5_vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid201_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,200)@4
    leftShiftStage0Idx2_uid201_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= redist5_vStage_uid133_lzCountVal_uid83_fpAddSubTest_ieeeAdd_b_1_q & zs_uid129_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q;

    -- leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITSELECT,196)@4
    leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in <= redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q(18 downto 0);
    leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b <= leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_in(18 downto 0);

    -- leftShiftStage0Idx1_uid198_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(BITJOIN,197)@4
    leftShiftStage0Idx1_uid198_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0Idx1Rng8_uid197_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_b & cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q;

    -- redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2(DELAY,238)
    redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_1_q, xout => redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(MUX,205)@4
    leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s <= leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_b;
    leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_combproc: PROCESS (leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s, en, redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q, leftShiftStage0Idx1_uid198_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage0Idx2_uid201_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage0Idx3_uid204_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s) IS
            WHEN "00" => leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= redist10_fracAddResultNoSignExt_uid82_fpAddSubTest_ieeeAdd_b_2_q;
            WHEN "01" => leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0Idx1_uid198_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "10" => leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0Idx2_uid201_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "11" => leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0Idx3_uid204_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(MUX,216)@4
    leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s <= leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_c;
    leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_combproc: PROCESS (leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s, en, leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage1Idx1_uid209_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage1Idx2_uid212_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage1Idx3_uid215_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s) IS
            WHEN "00" => leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage0_uid206_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "01" => leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx1_uid209_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "10" => leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx2_uid212_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "11" => leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1Idx3_uid215_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select(BITSELECT,227)@4
    leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_b <= r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(4 downto 3);
    leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_c <= r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(2 downto 1);
    leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_d <= r_uid158_lzCountVal_uid83_fpAddSubTest_ieeeAdd_q(0 downto 0);

    -- leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd(MUX,221)@4
    leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s <= leftShiftStageSel4Dto3_uid205_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_merged_bit_select_d;
    leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_combproc: PROCESS (leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s, en, leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q, leftShiftStage2Idx1_uid220_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_s) IS
            WHEN "0" => leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage1_uid217_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN "1" => leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= leftShiftStage2Idx1_uid220_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd(BITSELECT,88)@4
    fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_in <= leftShiftStage2_uid222_fracPostNorm_uid84_fpAddSubTest_ieeeAdd_q(25 downto 0);
    fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_b <= fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_in(25 downto 2);

    -- expFracR_uid90_fpAddSubTest_ieeeAdd(BITJOIN,89)@4
    expFracR_uid90_fpAddSubTest_ieeeAdd_q <= expPostNorm_uid88_fpAddSubTest_ieeeAdd_q & fracPostNormRndRange_uid89_fpAddSubTest_ieeeAdd_b;

    -- redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1(DELAY,236)
    redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expFracR_uid90_fpAddSubTest_ieeeAdd_q, xout => redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expRPreExc_uid96_fpAddSubTest_ieeeAdd(BITSELECT,95)@5
    expRPreExc_uid96_fpAddSubTest_ieeeAdd_in <= redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1_q(31 downto 0);
    expRPreExc_uid96_fpAddSubTest_ieeeAdd_b <= expRPreExc_uid96_fpAddSubTest_ieeeAdd_in(31 downto 24);

    -- wEP2AllOwE_uid91_fpAddSubTest_ieeeAdd(CONSTANT,90)
    wEP2AllOwE_uid91_fpAddSubTest_ieeeAdd_q <= "0011111111";

    -- rndExp_uid92_fpAddSubTest_ieeeAdd(BITSELECT,91)@5
    rndExp_uid92_fpAddSubTest_ieeeAdd_b <= redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1_q(33 downto 24);

    -- rOvf_uid93_fpAddSubTest_ieeeAdd(LOGICAL,92)@5
    rOvf_uid93_fpAddSubTest_ieeeAdd_q <= "1" WHEN rndExp_uid92_fpAddSubTest_ieeeAdd_b = wEP2AllOwE_uid91_fpAddSubTest_ieeeAdd_q ELSE "0";

    -- regInputs_uid97_fpAddSubTest_ieeeAdd(LOGICAL,96)@4
    regInputs_uid97_fpAddSubTest_ieeeAdd_q <= excR_aSig_uid40_fpAddSubTest_ieeeAdd_q and excR_bSig_uid54_fpAddSubTest_ieeeAdd_q;

    -- redist7_regInputs_uid97_fpAddSubTest_ieeeAdd_q_1(DELAY,235)
    redist7_regInputs_uid97_fpAddSubTest_ieeeAdd_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => regInputs_uid97_fpAddSubTest_ieeeAdd_q, xout => redist7_regInputs_uid97_fpAddSubTest_ieeeAdd_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rInfOvf_uid100_fpAddSubTest_ieeeAdd(LOGICAL,99)@5
    rInfOvf_uid100_fpAddSubTest_ieeeAdd_q <= redist7_regInputs_uid97_fpAddSubTest_ieeeAdd_q_1_q and rOvf_uid93_fpAddSubTest_ieeeAdd_q;

    -- excRInfVInC_uid101_fpAddSubTest_ieeeAdd(BITJOIN,100)@5
    excRInfVInC_uid101_fpAddSubTest_ieeeAdd_q <= rInfOvf_uid100_fpAddSubTest_ieeeAdd_q & excN_bSig_uid51_fpAddSubTest_ieeeAdd_q & excN_aSig_uid37_fpAddSubTest_ieeeAdd_q & redist17_excI_bSig_uid50_fpAddSubTest_ieeeAdd_q_1_q & redist23_excI_aSig_uid36_fpAddSubTest_ieeeAdd_q_1_q & redist11_effSub_uid61_fpAddSubTest_ieeeAdd_q_4_q;

    -- excRInf_uid102_fpAddSubTest_ieeeAdd(LOOKUP,101)@5
    excRInf_uid102_fpAddSubTest_ieeeAdd_combproc: PROCESS (excRInfVInC_uid101_fpAddSubTest_ieeeAdd_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRInfVInC_uid101_fpAddSubTest_ieeeAdd_q) IS
            WHEN "000000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "000001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "000010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "000011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "000100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "000101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "000110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "000111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "001111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "010111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "011111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "1";
            WHEN "100001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "100111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "101111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "110111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111000" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111001" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111010" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111011" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111100" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111101" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111110" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN "111111" => excRInf_uid102_fpAddSubTest_ieeeAdd_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRInf_uid102_fpAddSubTest_ieeeAdd_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- rUdf_uid94_fpAddSubTest_ieeeAdd(BITSELECT,93)@4
    rUdf_uid94_fpAddSubTest_ieeeAdd_b <= STD_LOGIC_VECTOR(expFracR_uid90_fpAddSubTest_ieeeAdd_q(33 downto 33));

    -- excRZeroVInC_uid98_fpAddSubTest_ieeeAdd(BITJOIN,97)@4
    excRZeroVInC_uid98_fpAddSubTest_ieeeAdd_q <= aMinusA_uid86_fpAddSubTest_ieeeAdd_q & rUdf_uid94_fpAddSubTest_ieeeAdd_b & regInputs_uid97_fpAddSubTest_ieeeAdd_q & redist20_excZ_bSig_uid26_uid46_fpAddSubTest_ieeeAdd_q_4_q & excZ_aSig_uid25_uid32_fpAddSubTest_ieeeAdd_q;

    -- excRZero_uid99_fpAddSubTest_ieeeAdd(LOOKUP,98)@4 + 1
    excRZero_uid99_fpAddSubTest_ieeeAdd_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (excRZeroVInC_uid98_fpAddSubTest_ieeeAdd_q) IS
                    WHEN "00000" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00001" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00010" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00011" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "00100" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00101" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00110" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "00111" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01000" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01001" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01010" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01011" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "01100" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "01101" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01110" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "01111" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10000" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10001" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10010" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10011" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "10100" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "10101" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10110" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "10111" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11000" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11001" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11010" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11011" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "11100" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "1";
                    WHEN "11101" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11110" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN "11111" => excRZero_uid99_fpAddSubTest_ieeeAdd_q <= "0";
                    WHEN OTHERS => -- unreachable
                                   excRZero_uid99_fpAddSubTest_ieeeAdd_q <= (others => '-');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- concExc_uid106_fpAddSubTest_ieeeAdd(BITJOIN,105)@5
    concExc_uid106_fpAddSubTest_ieeeAdd_q <= excRNaN_uid105_fpAddSubTest_ieeeAdd_q & excRInf_uid102_fpAddSubTest_ieeeAdd_q & excRZero_uid99_fpAddSubTest_ieeeAdd_q;

    -- excREnc_uid107_fpAddSubTest_ieeeAdd(LOOKUP,106)@5
    excREnc_uid107_fpAddSubTest_ieeeAdd_combproc: PROCESS (concExc_uid106_fpAddSubTest_ieeeAdd_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid106_fpAddSubTest_ieeeAdd_q) IS
            WHEN "000" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "01";
            WHEN "001" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "00";
            WHEN "010" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "10";
            WHEN "011" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "10";
            WHEN "100" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "11";
            WHEN "101" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "11";
            WHEN "110" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "11";
            WHEN "111" => excREnc_uid107_fpAddSubTest_ieeeAdd_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid107_fpAddSubTest_ieeeAdd_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid126_fpAddSubTest_ieeeAdd(MUX,125)@5
    expRPostExc_uid126_fpAddSubTest_ieeeAdd_s <= excREnc_uid107_fpAddSubTest_ieeeAdd_q;
    expRPostExc_uid126_fpAddSubTest_ieeeAdd_combproc: PROCESS (expRPostExc_uid126_fpAddSubTest_ieeeAdd_s, en, cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q, expRPreExc_uid96_fpAddSubTest_ieeeAdd_b, cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (expRPostExc_uid126_fpAddSubTest_ieeeAdd_s) IS
            WHEN "00" => expRPostExc_uid126_fpAddSubTest_ieeeAdd_q <= cstAllZWE_uid29_fpAddSubTest_ieeeAdd_q;
            WHEN "01" => expRPostExc_uid126_fpAddSubTest_ieeeAdd_q <= expRPreExc_uid96_fpAddSubTest_ieeeAdd_b;
            WHEN "10" => expRPostExc_uid126_fpAddSubTest_ieeeAdd_q <= cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q;
            WHEN "11" => expRPostExc_uid126_fpAddSubTest_ieeeAdd_q <= cstAllOWE_uid27_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => expRPostExc_uid126_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid119_fpAddSubTest_ieeeAdd(CONSTANT,118)
    oneFracRPostExc2_uid119_fpAddSubTest_ieeeAdd_q <= "00000000000000000000001";

    -- fracRPreExc_uid95_fpAddSubTest_ieeeAdd(BITSELECT,94)@5
    fracRPreExc_uid95_fpAddSubTest_ieeeAdd_in <= redist8_expFracR_uid90_fpAddSubTest_ieeeAdd_q_1_q(23 downto 0);
    fracRPreExc_uid95_fpAddSubTest_ieeeAdd_b <= fracRPreExc_uid95_fpAddSubTest_ieeeAdd_in(23 downto 1);

    -- fracRPostExc_uid122_fpAddSubTest_ieeeAdd(MUX,121)@5
    fracRPostExc_uid122_fpAddSubTest_ieeeAdd_s <= excREnc_uid107_fpAddSubTest_ieeeAdd_q;
    fracRPostExc_uid122_fpAddSubTest_ieeeAdd_combproc: PROCESS (fracRPostExc_uid122_fpAddSubTest_ieeeAdd_s, en, cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q, fracRPreExc_uid95_fpAddSubTest_ieeeAdd_b, oneFracRPostExc2_uid119_fpAddSubTest_ieeeAdd_q)
    BEGIN
        CASE (fracRPostExc_uid122_fpAddSubTest_ieeeAdd_s) IS
            WHEN "00" => fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q <= cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q;
            WHEN "01" => fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q <= fracRPreExc_uid95_fpAddSubTest_ieeeAdd_b;
            WHEN "10" => fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q <= cstZeroWF_uid28_fpAddSubTest_ieeeAdd_q;
            WHEN "11" => fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q <= oneFracRPostExc2_uid119_fpAddSubTest_ieeeAdd_q;
            WHEN OTHERS => fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid127_fpAddSubTest_ieeeAdd(BITJOIN,126)@5
    R_uid127_fpAddSubTest_ieeeAdd_q <= signRPostExc_uid118_fpAddSubTest_ieeeAdd_q & expRPostExc_uid126_fpAddSubTest_ieeeAdd_q & fracRPostExc_uid122_fpAddSubTest_ieeeAdd_q;

    -- xOut(GPOUT,4)@5
    q <= R_uid127_fpAddSubTest_ieeeAdd_q;

END normal;
