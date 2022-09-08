-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/08/2022 10:39:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testes IS
    PORT (
	NOP : OUT std_logic;
	instruction : IN std_logic_vector(7 DOWNTO 0);
	STA : OUT std_logic;
	LDA : OUT std_logic;
	ADD : OUT std_logic;
	\OR\ : OUT std_logic;
	\AND\ : OUT std_logic;
	\NOT\ : OUT std_logic;
	SUB : OUT std_logic;
	JMP : OUT std_logic;
	JN : OUT std_logic;
	JP : OUT std_logic;
	JV : OUT std_logic;
	JNV : OUT std_logic;
	JZ : OUT std_logic;
	JNZ : OUT std_logic;
	JC : OUT std_logic;
	JNC : OUT std_logic;
	JB : OUT std_logic;
	JNB : OUT std_logic;
	SHR : OUT std_logic;
	SHL : OUT std_logic;
	\ROR\ : OUT std_logic;
	\ROL\ : OUT std_logic;
	HLT : OUT std_logic
	);
END testes;

-- Design Ports Information
-- NOP	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STA	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDA	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OR	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AND	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NOT	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUB	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMP	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JN	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JP	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JV	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNV	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JZ	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNZ	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JC	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNC	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JB	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNB	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHR	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHL	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROR	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROL	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NOP : std_logic;
SIGNAL ww_instruction : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_STA : std_logic;
SIGNAL ww_LDA : std_logic;
SIGNAL ww_ADD : std_logic;
SIGNAL \ww_OR\ : std_logic;
SIGNAL \ww_AND\ : std_logic;
SIGNAL \ww_NOT\ : std_logic;
SIGNAL ww_SUB : std_logic;
SIGNAL ww_JMP : std_logic;
SIGNAL ww_JN : std_logic;
SIGNAL ww_JP : std_logic;
SIGNAL ww_JV : std_logic;
SIGNAL ww_JNV : std_logic;
SIGNAL ww_JZ : std_logic;
SIGNAL ww_JNZ : std_logic;
SIGNAL ww_JC : std_logic;
SIGNAL ww_JNC : std_logic;
SIGNAL ww_JB : std_logic;
SIGNAL ww_JNB : std_logic;
SIGNAL ww_SHR : std_logic;
SIGNAL ww_SHL : std_logic;
SIGNAL \ww_ROR\ : std_logic;
SIGNAL \ww_ROL\ : std_logic;
SIGNAL ww_HLT : std_logic;
SIGNAL \NOP~output_o\ : std_logic;
SIGNAL \STA~output_o\ : std_logic;
SIGNAL \LDA~output_o\ : std_logic;
SIGNAL \ADD~output_o\ : std_logic;
SIGNAL \OR~output_o\ : std_logic;
SIGNAL \AND~output_o\ : std_logic;
SIGNAL \NOT~output_o\ : std_logic;
SIGNAL \SUB~output_o\ : std_logic;
SIGNAL \JMP~output_o\ : std_logic;
SIGNAL \JN~output_o\ : std_logic;
SIGNAL \JP~output_o\ : std_logic;
SIGNAL \JV~output_o\ : std_logic;
SIGNAL \JNV~output_o\ : std_logic;
SIGNAL \JZ~output_o\ : std_logic;
SIGNAL \JNZ~output_o\ : std_logic;
SIGNAL \JC~output_o\ : std_logic;
SIGNAL \JNC~output_o\ : std_logic;
SIGNAL \JB~output_o\ : std_logic;
SIGNAL \JNB~output_o\ : std_logic;
SIGNAL \SHR~output_o\ : std_logic;
SIGNAL \SHL~output_o\ : std_logic;
SIGNAL \ROR~output_o\ : std_logic;
SIGNAL \ROL~output_o\ : std_logic;
SIGNAL \HLT~output_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \inst|inst|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst|inst6~2_combout\ : std_logic;
SIGNAL \inst|inst|inst6~3_combout\ : std_logic;
SIGNAL \inst|inst|inst6~4_combout\ : std_logic;
SIGNAL \inst|inst|inst6~5_combout\ : std_logic;
SIGNAL \inst|inst|inst6~6_combout\ : std_logic;
SIGNAL \inst|inst|inst6~7_combout\ : std_logic;
SIGNAL \inst|inst|inst6~8_combout\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \inst|inst|inst6~9_combout\ : std_logic;
SIGNAL \inst|inst2|inst8~combout\ : std_logic;
SIGNAL \inst|inst2|inst55~combout\ : std_logic;
SIGNAL \inst|inst2|inst65~combout\ : std_logic;
SIGNAL \inst|inst2|inst75~combout\ : std_logic;
SIGNAL \inst|inst|inst6~10_combout\ : std_logic;
SIGNAL \inst|inst4|inst5~combout\ : std_logic;
SIGNAL \inst|inst4|inst6~combout\ : std_logic;
SIGNAL \inst|inst|inst6~11_combout\ : std_logic;
SIGNAL \inst|inst3|inst8~combout\ : std_logic;
SIGNAL \inst|inst3|inst55~combout\ : std_logic;
SIGNAL \inst|inst3|inst65~combout\ : std_logic;
SIGNAL \inst|inst3|inst75~combout\ : std_logic;
SIGNAL \inst|inst|inst6~12_combout\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \inst|inst5|inst8~combout\ : std_logic;
SIGNAL \inst|inst5|inst55~combout\ : std_logic;
SIGNAL \inst|inst5|inst65~combout\ : std_logic;
SIGNAL \inst|inst5|inst75~combout\ : std_logic;
SIGNAL \inst|inst|inst6~13_combout\ : std_logic;

BEGIN

NOP <= ww_NOP;
ww_instruction <= instruction;
STA <= ww_STA;
LDA <= ww_LDA;
ADD <= ww_ADD;
\OR\ <= \ww_OR\;
\AND\ <= \ww_AND\;
\NOT\ <= \ww_NOT\;
SUB <= ww_SUB;
JMP <= ww_JMP;
JN <= ww_JN;
JP <= ww_JP;
JV <= ww_JV;
JNV <= ww_JNV;
JZ <= ww_JZ;
JNZ <= ww_JNZ;
JC <= ww_JC;
JNC <= ww_JNC;
JB <= ww_JB;
JNB <= ww_JNB;
SHR <= ww_SHR;
SHL <= ww_SHL;
\ROR\ <= \ww_ROR\;
\ROL\ <= \ww_ROL\;
HLT <= ww_HLT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X24_Y0_N2
\NOP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~0_combout\,
	devoe => ww_devoe,
	o => \NOP~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\STA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~1_combout\,
	devoe => ww_devoe,
	o => \STA~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\LDA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~2_combout\,
	devoe => ww_devoe,
	o => \LDA~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ADD~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~3_combout\,
	devoe => ww_devoe,
	o => \ADD~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\OR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~4_combout\,
	devoe => ww_devoe,
	o => \OR~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\AND~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~5_combout\,
	devoe => ww_devoe,
	o => \AND~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\NOT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~6_combout\,
	devoe => ww_devoe,
	o => \NOT~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\SUB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~7_combout\,
	devoe => ww_devoe,
	o => \SUB~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\JMP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~8_combout\,
	devoe => ww_devoe,
	o => \JMP~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\JN~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst8~combout\,
	devoe => ww_devoe,
	o => \JN~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\JP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst55~combout\,
	devoe => ww_devoe,
	o => \JP~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\JV~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst65~combout\,
	devoe => ww_devoe,
	o => \JV~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\JNV~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst75~combout\,
	devoe => ww_devoe,
	o => \JNV~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\JZ~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst5~combout\,
	devoe => ww_devoe,
	o => \JZ~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\JNZ~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst6~combout\,
	devoe => ww_devoe,
	o => \JNZ~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\JC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst8~combout\,
	devoe => ww_devoe,
	o => \JC~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\JNC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst55~combout\,
	devoe => ww_devoe,
	o => \JNC~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\JB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst65~combout\,
	devoe => ww_devoe,
	o => \JB~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\JNB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst75~combout\,
	devoe => ww_devoe,
	o => \JNB~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\SHR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8~combout\,
	devoe => ww_devoe,
	o => \SHR~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\SHL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst55~combout\,
	devoe => ww_devoe,
	o => \SHL~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\ROR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst65~combout\,
	devoe => ww_devoe,
	o => \ROR~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\ROL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst75~combout\,
	devoe => ww_devoe,
	o => \ROL~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\HLT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst6~13_combout\,
	devoe => ww_devoe,
	o => \HLT~output_o\);

-- Location: IOIBUF_X29_Y0_N8
\instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: LCCOMB_X32_Y4_N16
\inst|inst|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~0_combout\ = (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~0_combout\);

-- Location: LCCOMB_X32_Y4_N26
\inst|inst|inst6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~1_combout\ = (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~1_combout\);

-- Location: LCCOMB_X32_Y4_N28
\inst|inst|inst6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~2_combout\ = (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~2_combout\);

-- Location: LCCOMB_X32_Y4_N30
\inst|inst|inst6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~3_combout\ = (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~3_combout\);

-- Location: LCCOMB_X32_Y4_N8
\inst|inst|inst6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~4_combout\ = (!\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~4_combout\);

-- Location: LCCOMB_X32_Y4_N10
\inst|inst|inst6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~5_combout\ = (!\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~5_combout\);

-- Location: LCCOMB_X32_Y4_N20
\inst|inst|inst6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~6_combout\ = (!\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~6_combout\);

-- Location: LCCOMB_X32_Y4_N6
\inst|inst|inst6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~7_combout\ = (!\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~7_combout\);

-- Location: LCCOMB_X32_Y4_N0
\inst|inst|inst6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~8_combout\ = (\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~8_combout\);

-- Location: IOIBUF_X14_Y0_N1
\instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: LCCOMB_X32_Y4_N18
\inst|inst|inst6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~9_combout\ = (\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (\instruction[4]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~9_combout\);

-- Location: LCCOMB_X30_Y4_N24
\inst|inst2|inst8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst8~combout\ = (!\instruction[2]~input_o\ & (!\instruction[3]~input_o\ & \inst|inst|inst6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datac => \instruction[3]~input_o\,
	datad => \inst|inst|inst6~9_combout\,
	combout => \inst|inst2|inst8~combout\);

-- Location: LCCOMB_X30_Y4_N18
\inst|inst2|inst55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst55~combout\ = (\instruction[2]~input_o\ & (!\instruction[3]~input_o\ & \inst|inst|inst6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datac => \instruction[3]~input_o\,
	datad => \inst|inst|inst6~9_combout\,
	combout => \inst|inst2|inst55~combout\);

-- Location: LCCOMB_X30_Y4_N4
\inst|inst2|inst65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst65~combout\ = (!\instruction[2]~input_o\ & (\instruction[3]~input_o\ & \inst|inst|inst6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datac => \instruction[3]~input_o\,
	datad => \inst|inst|inst6~9_combout\,
	combout => \inst|inst2|inst65~combout\);

-- Location: LCCOMB_X30_Y4_N22
\inst|inst2|inst75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst75~combout\ = (\instruction[2]~input_o\ & (\instruction[3]~input_o\ & \inst|inst|inst6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datac => \instruction[3]~input_o\,
	datad => \inst|inst|inst6~9_combout\,
	combout => \inst|inst2|inst75~combout\);

-- Location: LCCOMB_X32_Y4_N12
\inst|inst|inst6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~10_combout\ = (\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~10_combout\);

-- Location: LCCOMB_X32_Y4_N14
\inst|inst4|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4|inst5~combout\ = (!\instruction[2]~input_o\ & \inst|inst|inst6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datad => \inst|inst|inst6~10_combout\,
	combout => \inst|inst4|inst5~combout\);

-- Location: LCCOMB_X32_Y4_N24
\inst|inst4|inst6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4|inst6~combout\ = (\instruction[2]~input_o\ & \inst|inst|inst6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datad => \inst|inst|inst6~10_combout\,
	combout => \inst|inst4|inst6~combout\);

-- Location: LCCOMB_X32_Y4_N2
\inst|inst|inst6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~11_combout\ = (\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~11_combout\);

-- Location: LCCOMB_X30_Y4_N8
\inst|inst3|inst8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~combout\ = (\inst|inst|inst6~11_combout\ & (!\instruction[3]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst6~11_combout\,
	datac => \instruction[3]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \inst|inst3|inst8~combout\);

-- Location: LCCOMB_X30_Y4_N10
\inst|inst3|inst55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst55~combout\ = (\inst|inst|inst6~11_combout\ & (!\instruction[3]~input_o\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst6~11_combout\,
	datac => \instruction[3]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \inst|inst3|inst55~combout\);

-- Location: LCCOMB_X30_Y4_N12
\inst|inst3|inst65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst65~combout\ = (\inst|inst|inst6~11_combout\ & (\instruction[3]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst6~11_combout\,
	datac => \instruction[3]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \inst|inst3|inst65~combout\);

-- Location: LCCOMB_X30_Y4_N30
\inst|inst3|inst75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst75~combout\ = (\inst|inst|inst6~11_combout\ & (\instruction[3]~input_o\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst6~11_combout\,
	datac => \instruction[3]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \inst|inst3|inst75~combout\);

-- Location: LCCOMB_X32_Y4_N4
\inst|inst|inst6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~12_combout\ = (\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~12_combout\);

-- Location: IOIBUF_X33_Y22_N8
\instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: LCCOMB_X32_Y14_N16
\inst|inst5|inst8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5|inst8~combout\ = (\inst|inst|inst6~12_combout\ & (!\instruction[1]~input_o\ & !\instruction[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6~12_combout\,
	datac => \instruction[1]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \inst|inst5|inst8~combout\);

-- Location: LCCOMB_X32_Y14_N18
\inst|inst5|inst55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5|inst55~combout\ = (\inst|inst|inst6~12_combout\ & (!\instruction[1]~input_o\ & \instruction[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6~12_combout\,
	datac => \instruction[1]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \inst|inst5|inst55~combout\);

-- Location: LCCOMB_X32_Y14_N4
\inst|inst5|inst65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5|inst65~combout\ = (\inst|inst|inst6~12_combout\ & (\instruction[1]~input_o\ & !\instruction[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6~12_combout\,
	datac => \instruction[1]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \inst|inst5|inst65~combout\);

-- Location: LCCOMB_X32_Y14_N22
\inst|inst5|inst75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5|inst75~combout\ = (\inst|inst|inst6~12_combout\ & (\instruction[1]~input_o\ & \instruction[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6~12_combout\,
	datac => \instruction[1]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \inst|inst5|inst75~combout\);

-- Location: LCCOMB_X32_Y4_N22
\inst|inst|inst6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~13_combout\ = (\instruction[7]~input_o\ & (\instruction[6]~input_o\ & (\instruction[4]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \inst|inst|inst6~13_combout\);

ww_NOP <= \NOP~output_o\;

ww_STA <= \STA~output_o\;

ww_LDA <= \LDA~output_o\;

ww_ADD <= \ADD~output_o\;

\ww_OR\ <= \OR~output_o\;

\ww_AND\ <= \AND~output_o\;

\ww_NOT\ <= \NOT~output_o\;

ww_SUB <= \SUB~output_o\;

ww_JMP <= \JMP~output_o\;

ww_JN <= \JN~output_o\;

ww_JP <= \JP~output_o\;

ww_JV <= \JV~output_o\;

ww_JNV <= \JNV~output_o\;

ww_JZ <= \JZ~output_o\;

ww_JNZ <= \JNZ~output_o\;

ww_JC <= \JC~output_o\;

ww_JNC <= \JNC~output_o\;

ww_JB <= \JB~output_o\;

ww_JNB <= \JNB~output_o\;

ww_SHR <= \SHR~output_o\;

ww_SHL <= \SHL~output_o\;

\ww_ROR\ <= \ROR~output_o\;

\ww_ROL\ <= \ROL~output_o\;

ww_HLT <= \HLT~output_o\;
END structure;


