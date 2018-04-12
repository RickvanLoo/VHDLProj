-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "04/12/2018 12:02:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Overall IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	switch : IN std_logic;
	LR_CLK : IN std_logic;
	BIT_CLK : IN std_logic;
	DIN : IN std_logic;
	LR_CLK_OUT : OUT std_logic;
	BIT_CLK_OUT : OUT std_logic;
	DOUT : OUT std_logic;
	SCLK : IN std_logic;
	SDATA : IN std_logic;
	CS : IN std_logic;
	dig0 : OUT std_logic_vector(6 DOWNTO 0);
	dig1 : OUT std_logic_vector(6 DOWNTO 0);
	init_finish : OUT std_logic;
	AUD_MCLK : OUT std_logic;
	AUD_BCLK : IN std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : IN std_logic;
	I2C_SDAT : OUT std_logic;
	I2C_SCLK : OUT std_logic
	);
END Overall;

-- Design Ports Information
-- LR_CLK_OUT	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT_CLK_OUT	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- init_finish	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_MCLK	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDATA	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT_CLK	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LR_CLK	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Overall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_LR_CLK : std_logic;
SIGNAL ww_BIT_CLK : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_LR_CLK_OUT : std_logic;
SIGNAL ww_BIT_CLK_OUT : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SDATA : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_dig0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_init_finish : std_logic;
SIGNAL ww_AUD_MCLK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL \volume|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \volume|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \volume|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \volume|Mult2~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \volume|Mult2~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \volume|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \volume|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \volume|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \volume|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \volume|Mult1~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \volume|Mult1~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \volume|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \volume|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \volume|Mult0~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \volume|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \volume|Mult2~8_resulta\ : std_logic;
SIGNAL \volume|Mult2~9\ : std_logic;
SIGNAL \volume|Mult2~10\ : std_logic;
SIGNAL \volume|Mult2~11\ : std_logic;
SIGNAL \volume|Mult2~12\ : std_logic;
SIGNAL \volume|Mult2~13\ : std_logic;
SIGNAL \volume|Mult2~14\ : std_logic;
SIGNAL \volume|Mult2~30\ : std_logic;
SIGNAL \volume|Mult2~32\ : std_logic;
SIGNAL \volume|Mult2~33\ : std_logic;
SIGNAL \volume|Mult2~34\ : std_logic;
SIGNAL \volume|Mult2~35\ : std_logic;
SIGNAL \volume|Mult2~36\ : std_logic;
SIGNAL \volume|Mult2~37\ : std_logic;
SIGNAL \volume|Mult2~38\ : std_logic;
SIGNAL \volume|Mult2~39\ : std_logic;
SIGNAL \volume|Mult2~40\ : std_logic;
SIGNAL \volume|Mult2~41\ : std_logic;
SIGNAL \volume|Mult2~42\ : std_logic;
SIGNAL \volume|Mult2~43\ : std_logic;
SIGNAL \volume|Mult2~44\ : std_logic;
SIGNAL \volume|Mult2~45\ : std_logic;
SIGNAL \volume|Mult2~46\ : std_logic;
SIGNAL \volume|Mult2~47\ : std_logic;
SIGNAL \volume|Mult2~48\ : std_logic;
SIGNAL \volume|Mult2~49\ : std_logic;
SIGNAL \volume|Mult2~50\ : std_logic;
SIGNAL \volume|Mult2~51\ : std_logic;
SIGNAL \volume|Mult2~52\ : std_logic;
SIGNAL \volume|Mult2~53\ : std_logic;
SIGNAL \volume|Mult2~54\ : std_logic;
SIGNAL \volume|Mult2~55\ : std_logic;
SIGNAL \volume|Mult2~56\ : std_logic;
SIGNAL \volume|Mult2~57\ : std_logic;
SIGNAL \volume|Mult2~58\ : std_logic;
SIGNAL \volume|Mult2~59\ : std_logic;
SIGNAL \volume|Mult2~60\ : std_logic;
SIGNAL \volume|Mult2~61\ : std_logic;
SIGNAL \volume|Mult2~62\ : std_logic;
SIGNAL \volume|Mult2~63\ : std_logic;
SIGNAL \volume|Mult2~64\ : std_logic;
SIGNAL \volume|Mult2~65\ : std_logic;
SIGNAL \volume|Mult2~66\ : std_logic;
SIGNAL \volume|Mult2~67\ : std_logic;
SIGNAL \volume|Mult2~68\ : std_logic;
SIGNAL \volume|Mult2~69\ : std_logic;
SIGNAL \volume|Mult2~70\ : std_logic;
SIGNAL \volume|Mult2~71\ : std_logic;
SIGNAL \volume|Mult1~8_resulta\ : std_logic;
SIGNAL \volume|Mult1~9\ : std_logic;
SIGNAL \volume|Mult1~10\ : std_logic;
SIGNAL \volume|Mult1~11\ : std_logic;
SIGNAL \volume|Mult1~12\ : std_logic;
SIGNAL \volume|Mult1~13\ : std_logic;
SIGNAL \volume|Mult1~14\ : std_logic;
SIGNAL \volume|Mult1~30\ : std_logic;
SIGNAL \volume|Mult1~32\ : std_logic;
SIGNAL \volume|Mult1~33\ : std_logic;
SIGNAL \volume|Mult1~34\ : std_logic;
SIGNAL \volume|Mult1~35\ : std_logic;
SIGNAL \volume|Mult1~36\ : std_logic;
SIGNAL \volume|Mult1~37\ : std_logic;
SIGNAL \volume|Mult1~38\ : std_logic;
SIGNAL \volume|Mult1~39\ : std_logic;
SIGNAL \volume|Mult1~40\ : std_logic;
SIGNAL \volume|Mult1~41\ : std_logic;
SIGNAL \volume|Mult1~42\ : std_logic;
SIGNAL \volume|Mult1~43\ : std_logic;
SIGNAL \volume|Mult1~44\ : std_logic;
SIGNAL \volume|Mult1~45\ : std_logic;
SIGNAL \volume|Mult1~46\ : std_logic;
SIGNAL \volume|Mult1~47\ : std_logic;
SIGNAL \volume|Mult1~48\ : std_logic;
SIGNAL \volume|Mult1~49\ : std_logic;
SIGNAL \volume|Mult1~50\ : std_logic;
SIGNAL \volume|Mult1~51\ : std_logic;
SIGNAL \volume|Mult1~52\ : std_logic;
SIGNAL \volume|Mult1~53\ : std_logic;
SIGNAL \volume|Mult1~54\ : std_logic;
SIGNAL \volume|Mult1~55\ : std_logic;
SIGNAL \volume|Mult1~56\ : std_logic;
SIGNAL \volume|Mult1~57\ : std_logic;
SIGNAL \volume|Mult1~58\ : std_logic;
SIGNAL \volume|Mult1~59\ : std_logic;
SIGNAL \volume|Mult1~60\ : std_logic;
SIGNAL \volume|Mult1~61\ : std_logic;
SIGNAL \volume|Mult1~62\ : std_logic;
SIGNAL \volume|Mult1~63\ : std_logic;
SIGNAL \volume|Mult1~64\ : std_logic;
SIGNAL \volume|Mult1~65\ : std_logic;
SIGNAL \volume|Mult1~66\ : std_logic;
SIGNAL \volume|Mult1~67\ : std_logic;
SIGNAL \volume|Mult1~68\ : std_logic;
SIGNAL \volume|Mult1~69\ : std_logic;
SIGNAL \volume|Mult1~70\ : std_logic;
SIGNAL \volume|Mult1~71\ : std_logic;
SIGNAL \volume|Mult0~8_resulta\ : std_logic;
SIGNAL \volume|Mult0~9\ : std_logic;
SIGNAL \volume|Mult0~10\ : std_logic;
SIGNAL \volume|Mult0~11\ : std_logic;
SIGNAL \volume|Mult0~12\ : std_logic;
SIGNAL \volume|Mult0~13\ : std_logic;
SIGNAL \volume|Mult0~14\ : std_logic;
SIGNAL \volume|Mult0~23\ : std_logic;
SIGNAL \volume|Mult0~24\ : std_logic;
SIGNAL \volume|Mult0~25\ : std_logic;
SIGNAL \volume|Mult0~26\ : std_logic;
SIGNAL \volume|Mult0~27\ : std_logic;
SIGNAL \volume|Mult0~28\ : std_logic;
SIGNAL \volume|Mult0~29\ : std_logic;
SIGNAL \volume|Mult0~30\ : std_logic;
SIGNAL \volume|Mult0~31\ : std_logic;
SIGNAL \volume|Mult0~32\ : std_logic;
SIGNAL \volume|Mult0~33\ : std_logic;
SIGNAL \volume|Mult0~34\ : std_logic;
SIGNAL \volume|Mult0~35\ : std_logic;
SIGNAL \volume|Mult0~36\ : std_logic;
SIGNAL \volume|Mult0~37\ : std_logic;
SIGNAL \volume|Mult0~38\ : std_logic;
SIGNAL \volume|Mult0~39\ : std_logic;
SIGNAL \volume|Mult0~40\ : std_logic;
SIGNAL \volume|Mult0~41\ : std_logic;
SIGNAL \volume|Mult0~42\ : std_logic;
SIGNAL \volume|Mult0~43\ : std_logic;
SIGNAL \volume|Mult0~44\ : std_logic;
SIGNAL \volume|Mult0~45\ : std_logic;
SIGNAL \volume|Mult0~46\ : std_logic;
SIGNAL \volume|Mult0~47\ : std_logic;
SIGNAL \volume|Mult0~48\ : std_logic;
SIGNAL \volume|Mult0~49\ : std_logic;
SIGNAL \volume|Mult0~50\ : std_logic;
SIGNAL \volume|Mult0~51\ : std_logic;
SIGNAL \volume|Mult0~52\ : std_logic;
SIGNAL \volume|Mult0~53\ : std_logic;
SIGNAL \volume|Mult0~54\ : std_logic;
SIGNAL \volume|Mult0~55\ : std_logic;
SIGNAL \volume|Mult0~56\ : std_logic;
SIGNAL \volume|Mult0~57\ : std_logic;
SIGNAL \volume|Mult0~58\ : std_logic;
SIGNAL \volume|Mult0~59\ : std_logic;
SIGNAL \volume|Mult0~60\ : std_logic;
SIGNAL \volume|Mult0~61\ : std_logic;
SIGNAL \volume|Mult0~62\ : std_logic;
SIGNAL \volume|Mult0~63\ : std_logic;
SIGNAL \volume|Mult0~64\ : std_logic;
SIGNAL \volume|Mult0~65\ : std_logic;
SIGNAL \volume|Mult0~66\ : std_logic;
SIGNAL \volume|Mult0~67\ : std_logic;
SIGNAL \volume|Mult0~68\ : std_logic;
SIGNAL \volume|Mult0~69\ : std_logic;
SIGNAL \volume|Mult0~70\ : std_logic;
SIGNAL \volume|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \meinclock|s_counter_bit[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \audioout|Add1~5_sumout\ : std_logic;
SIGNAL \audioout|Add1~6\ : std_logic;
SIGNAL \audioout|Add1~1_sumout\ : std_logic;
SIGNAL \audioout|Add1~2\ : std_logic;
SIGNAL \audioout|Add1~33_sumout\ : std_logic;
SIGNAL \audioout|Add1~34\ : std_logic;
SIGNAL \audioout|Add1~29_sumout\ : std_logic;
SIGNAL \audioout|Add1~30\ : std_logic;
SIGNAL \audioout|Add1~25_sumout\ : std_logic;
SIGNAL \audioout|Add1~26\ : std_logic;
SIGNAL \audioout|Add1~21_sumout\ : std_logic;
SIGNAL \audioout|Add1~22\ : std_logic;
SIGNAL \audioout|Add1~17_sumout\ : std_logic;
SIGNAL \audioout|Add1~18\ : std_logic;
SIGNAL \audioout|Add1~13_sumout\ : std_logic;
SIGNAL \audioout|Add1~14\ : std_logic;
SIGNAL \audioout|Add1~9_sumout\ : std_logic;
SIGNAL \audioout|Selector29~0_combout\ : std_logic;
SIGNAL \audioout|word_count[0]~1_combout\ : std_logic;
SIGNAL \audioout|word_counter~0_combout\ : std_logic;
SIGNAL \audioout|sck0~q\ : std_logic;
SIGNAL \audioout|sck1~q\ : std_logic;
SIGNAL \audioout|next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|state.b3~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|state.b4~q\ : std_logic;
SIGNAL \audioout|state.b5~q\ : std_logic;
SIGNAL \audioout|state.b6~q\ : std_logic;
SIGNAL \audioout|state.b7~q\ : std_logic;
SIGNAL \audioout|state.b_ack~q\ : std_logic;
SIGNAL \audioout|state.a0~q\ : std_logic;
SIGNAL \audioout|state.a1~q\ : std_logic;
SIGNAL \audioout|state.a2~q\ : std_logic;
SIGNAL \audioout|state.a3~q\ : std_logic;
SIGNAL \audioout|state.a4~q\ : std_logic;
SIGNAL \audioout|state.a5~q\ : std_logic;
SIGNAL \audioout|state.a6~q\ : std_logic;
SIGNAL \audioout|state.a7~feeder_combout\ : std_logic;
SIGNAL \audioout|state.a7~q\ : std_logic;
SIGNAL \audioout|state.a_ack~q\ : std_logic;
SIGNAL \audioout|state.d0~q\ : std_logic;
SIGNAL \audioout|state.d1~q\ : std_logic;
SIGNAL \audioout|state.d2~q\ : std_logic;
SIGNAL \audioout|state.d3~q\ : std_logic;
SIGNAL \audioout|state.d4~q\ : std_logic;
SIGNAL \audioout|state.d5~q\ : std_logic;
SIGNAL \audioout|state.d6~q\ : std_logic;
SIGNAL \audioout|state.d7~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|state.d_ack~q\ : std_logic;
SIGNAL \audioout|Mux10~0_combout\ : std_logic;
SIGNAL \audioout|Mux1~0_combout\ : std_logic;
SIGNAL \audioout|word_count[3]~0_combout\ : std_logic;
SIGNAL \audioout|Selector0~0_combout\ : std_logic;
SIGNAL \audioout|Selector29~1_combout\ : std_logic;
SIGNAL \audioout|state.b_stop0~q\ : std_logic;
SIGNAL \audioout|next_state.b_stop1~0_combout\ : std_logic;
SIGNAL \audioout|state.b_stop1~q\ : std_logic;
SIGNAL \audioout|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audioout|state.b_end~q\ : std_logic;
SIGNAL \audioout|I2C_SCLK~combout\ : std_logic;
SIGNAL \audioout|Selector0~1_combout\ : std_logic;
SIGNAL \audioout|Selector0~2_combout\ : std_logic;
SIGNAL \audioout|state.initialize~q\ : std_logic;
SIGNAL \audioout|Selector1~0_combout\ : std_logic;
SIGNAL \audioout|state.start~q\ : std_logic;
SIGNAL \audioout|state.b0~q\ : std_logic;
SIGNAL \audioout|state.b1~q\ : std_logic;
SIGNAL \audioout|state.b2~q\ : std_logic;
SIGNAL \audioout|state.b3~q\ : std_logic;
SIGNAL \audioout|Selector30~4_combout\ : std_logic;
SIGNAL \audioout|state.d6~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Selector30~3_combout\ : std_logic;
SIGNAL \audioout|Selector30~5_combout\ : std_logic;
SIGNAL \audioout|Selector30~6_combout\ : std_logic;
SIGNAL \audioout|Selector30~2_combout\ : std_logic;
SIGNAL \audioout|Selector30~7_combout\ : std_logic;
SIGNAL \audioout|state.d7~q\ : std_logic;
SIGNAL \audioout|Selector30~8_combout\ : std_logic;
SIGNAL \audioout|Selector30~10_combout\ : std_logic;
SIGNAL \audioout|Selector30~1_combout\ : std_logic;
SIGNAL \audioout|Selector30~0_combout\ : std_logic;
SIGNAL \audioout|Selector30~9_combout\ : std_logic;
SIGNAL \audioout|WideOr32~combout\ : std_logic;
SIGNAL \meinclock|s_counter_bit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \meinclock|s_bit_clk~0_combout\ : std_logic;
SIGNAL \meinclock|s_bit_clk~q\ : std_logic;
SIGNAL \meinclock|v_lr_clk_enable~0_combout\ : std_logic;
SIGNAL \meinclock|s_counter_lr[0]~4_combout\ : std_logic;
SIGNAL \meinclock|s_counter_lr[1]~3_combout\ : std_logic;
SIGNAL \meinclock|s_counter_lr[2]~2_combout\ : std_logic;
SIGNAL \meinclock|s_counter_lr[3]~1_combout\ : std_logic;
SIGNAL \meinclock|s_counter_lr~0_combout\ : std_logic;
SIGNAL \meinclock|s_lr_clk~0_combout\ : std_logic;
SIGNAL \meinclock|s_lr_clk~1_combout\ : std_logic;
SIGNAL \meinclock|s_lr_clk~feeder_combout\ : std_logic;
SIGNAL \meinclock|s_lr_clk~q\ : std_logic;
SIGNAL \tootherdac|LR_CLK_OUT~0_combout\ : std_logic;
SIGNAL \tootherdac|BIT_CLK_OUT~0_combout\ : std_logic;
SIGNAL \tootherdac|s_current_lr~0_combout\ : std_logic;
SIGNAL \tootherdac|s_current_lr~q\ : std_logic;
SIGNAL \tootherdac|counter[1]~2_combout\ : std_logic;
SIGNAL \tootherdac|counter[2]~1_combout\ : std_logic;
SIGNAL \tootherdac|counter[0]~3_combout\ : std_logic;
SIGNAL \tootherdac|counter[3]~0_combout\ : std_logic;
SIGNAL \tootherdac|DOUT~0_combout\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SDATA~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \volume|scaled_vol[0]~1_combout\ : std_logic;
SIGNAL \volume|Add0~41_sumout\ : std_logic;
SIGNAL \volume|Add0~42\ : std_logic;
SIGNAL \volume|Add0~45_sumout\ : std_logic;
SIGNAL \volume|Add0~46\ : std_logic;
SIGNAL \volume|Add0~49_sumout\ : std_logic;
SIGNAL \volume|Add0~50\ : std_logic;
SIGNAL \volume|Add0~53_sumout\ : std_logic;
SIGNAL \volume|Add0~54\ : std_logic;
SIGNAL \volume|Add0~57_sumout\ : std_logic;
SIGNAL \volume|Add0~58\ : std_logic;
SIGNAL \volume|Add0~61_sumout\ : std_logic;
SIGNAL \volume|Add0~62\ : std_logic;
SIGNAL \volume|Add0~69_sumout\ : std_logic;
SIGNAL \volume|Add0~70\ : std_logic;
SIGNAL \volume|Add0~73_sumout\ : std_logic;
SIGNAL \volume|Add0~74\ : std_logic;
SIGNAL \volume|Add0~77_sumout\ : std_logic;
SIGNAL \volume|Add0~78\ : std_logic;
SIGNAL \volume|Add0~9_sumout\ : std_logic;
SIGNAL \volume|Add0~10\ : std_logic;
SIGNAL \volume|Add0~13_sumout\ : std_logic;
SIGNAL \volume|Add0~14\ : std_logic;
SIGNAL \volume|Add0~65_sumout\ : std_logic;
SIGNAL \volume|Add0~66\ : std_logic;
SIGNAL \volume|Add0~17_sumout\ : std_logic;
SIGNAL \volume|Add0~18\ : std_logic;
SIGNAL \volume|Add0~37_sumout\ : std_logic;
SIGNAL \volume|Add0~38\ : std_logic;
SIGNAL \volume|Add0~33_sumout\ : std_logic;
SIGNAL \volume|Add0~34\ : std_logic;
SIGNAL \volume|Add0~21_sumout\ : std_logic;
SIGNAL \volume|Add0~22\ : std_logic;
SIGNAL \volume|Add0~25_sumout\ : std_logic;
SIGNAL \volume|Add0~26\ : std_logic;
SIGNAL \volume|Add0~29_sumout\ : std_logic;
SIGNAL \volume|Equal0~1_combout\ : std_logic;
SIGNAL \volume|Equal0~3_combout\ : std_logic;
SIGNAL \volume|Add0~30\ : std_logic;
SIGNAL \volume|Add0~1_sumout\ : std_logic;
SIGNAL \volume|Add0~2\ : std_logic;
SIGNAL \volume|Add0~5_sumout\ : std_logic;
SIGNAL \volume|Equal0~0_combout\ : std_logic;
SIGNAL \volume|Equal0~2_combout\ : std_logic;
SIGNAL \volume|Equal0~4_combout\ : std_logic;
SIGNAL \volume|count~2_combout\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \volume|spoken~0_combout\ : std_logic;
SIGNAL \volume|spoken~q\ : std_logic;
SIGNAL \volume|count[0]~1_combout\ : std_logic;
SIGNAL \volume|count~0_combout\ : std_logic;
SIGNAL \volume|scalar~0_combout\ : std_logic;
SIGNAL \volume|Add1~2\ : std_logic;
SIGNAL \volume|Add1~5_sumout\ : std_logic;
SIGNAL \volume|Add2~2\ : std_logic;
SIGNAL \volume|Add2~6\ : std_logic;
SIGNAL \volume|Add2~9_sumout\ : std_logic;
SIGNAL \volume|scalar~3_combout\ : std_logic;
SIGNAL \volume|scalar[1]~2_combout\ : std_logic;
SIGNAL \volume|Add1~6\ : std_logic;
SIGNAL \volume|Add1~9_sumout\ : std_logic;
SIGNAL \volume|Add2~10\ : std_logic;
SIGNAL \volume|Add2~13_sumout\ : std_logic;
SIGNAL \volume|scalar~4_combout\ : std_logic;
SIGNAL \volume|Add1~10\ : std_logic;
SIGNAL \volume|Add1~13_sumout\ : std_logic;
SIGNAL \volume|Add2~14\ : std_logic;
SIGNAL \volume|Add2~17_sumout\ : std_logic;
SIGNAL \volume|scalar~5_combout\ : std_logic;
SIGNAL \volume|Add2~18\ : std_logic;
SIGNAL \volume|Add2~21_sumout\ : std_logic;
SIGNAL \volume|Add1~14\ : std_logic;
SIGNAL \volume|Add1~17_sumout\ : std_logic;
SIGNAL \volume|scalar~6_combout\ : std_logic;
SIGNAL \volume|LessThan0~1_combout\ : std_logic;
SIGNAL \volume|Add2~22\ : std_logic;
SIGNAL \volume|Add2~25_sumout\ : std_logic;
SIGNAL \volume|Add1~18\ : std_logic;
SIGNAL \volume|Add1~21_sumout\ : std_logic;
SIGNAL \volume|scalar~7_combout\ : std_logic;
SIGNAL \volume|Add1~22\ : std_logic;
SIGNAL \volume|Add1~25_sumout\ : std_logic;
SIGNAL \volume|Add2~26\ : std_logic;
SIGNAL \volume|Add2~29_sumout\ : std_logic;
SIGNAL \volume|scalar~8_combout\ : std_logic;
SIGNAL \volume|Add1~1_sumout\ : std_logic;
SIGNAL \volume|Add2~5_sumout\ : std_logic;
SIGNAL \volume|scalar~1_combout\ : std_logic;
SIGNAL \volume|LessThan0~0_combout\ : std_logic;
SIGNAL \volume|LessThan0~2_combout\ : std_logic;
SIGNAL \volume|Add2~1_sumout\ : std_logic;
SIGNAL \volume|scalar[0]~9_combout\ : std_logic;
SIGNAL \volume|Mult0~15\ : std_logic;
SIGNAL \volume|scaled_vol[0]~3_combout\ : std_logic;
SIGNAL \volume|scaled_vol[0]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[0]~2_combout\ : std_logic;
SIGNAL \volume|scaled_vol[1]~5_combout\ : std_logic;
SIGNAL \volume|Mult0~16\ : std_logic;
SIGNAL \volume|scaled_vol[1]~7_combout\ : std_logic;
SIGNAL \volume|scaled_vol[1]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[1]~6_combout\ : std_logic;
SIGNAL \volume|scaled_vol[2]~9_combout\ : std_logic;
SIGNAL \volume|Mult0~17\ : std_logic;
SIGNAL \volume|scaled_vol[2]~11_combout\ : std_logic;
SIGNAL \volume|scaled_vol[2]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[2]~10_combout\ : std_logic;
SIGNAL \volume|scaled_vol[3]~13_combout\ : std_logic;
SIGNAL \volume|Mult0~18\ : std_logic;
SIGNAL \volume|scaled_vol[3]~15_combout\ : std_logic;
SIGNAL \volume|scaled_vol[3]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[3]~14_combout\ : std_logic;
SIGNAL \volume|scaled_vol[4]~17_combout\ : std_logic;
SIGNAL \volume|Mult0~19\ : std_logic;
SIGNAL \volume|scaled_vol[4]~19_combout\ : std_logic;
SIGNAL \volume|scaled_vol[4]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[4]~18_combout\ : std_logic;
SIGNAL \volume|scaled_vol[5]~21_combout\ : std_logic;
SIGNAL \volume|Mult0~20\ : std_logic;
SIGNAL \volume|scaled_vol[5]~23_combout\ : std_logic;
SIGNAL \volume|scaled_vol[5]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[5]~22_combout\ : std_logic;
SIGNAL \volume|scaled_vol[6]~25_combout\ : std_logic;
SIGNAL \volume|Mult0~21\ : std_logic;
SIGNAL \volume|scaled_vol[6]~27_combout\ : std_logic;
SIGNAL \volume|scaled_vol[6]~_emulated_q\ : std_logic;
SIGNAL \volume|scaled_vol[6]~26_combout\ : std_logic;
SIGNAL \volume|Mult0~22\ : std_logic;
SIGNAL \volume|scaled_vol[7]~feeder_combout\ : std_logic;
SIGNAL \BIT_CLK~input_o\ : std_logic;
SIGNAL \LR_CLK~input_o\ : std_logic;
SIGNAL \BIT_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i2sin|s_current_lr~q\ : std_logic;
SIGNAL \i2sin|i2s_in~0_combout\ : std_logic;
SIGNAL \i2sin|s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|DATA_RDY_R~0_combout\ : std_logic;
SIGNAL \i2sin|DATA_RDY_R~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_RDY_R~q\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \i2sin|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[0]~0_combout\ : std_logic;
SIGNAL \buff|DATARSIG[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[1]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[2]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[2]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[3]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[3]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[4]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[4]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[5]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[5]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[6]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[6]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[7]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[8]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[9]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[10]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[10]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[11]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[11]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[12]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[12]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[12]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[13]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[13]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[14]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[14]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[15]~feeder_combout\ : std_logic;
SIGNAL \buff|DATARSIG[15]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[9]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~26_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~8_combout\ : std_logic;
SIGNAL \i2sin|DATA_RDY_L~0_combout\ : std_logic;
SIGNAL \i2sin|DATA_RDY_L~q\ : std_logic;
SIGNAL \i2sin|DATA_L[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[0]~0_combout\ : std_logic;
SIGNAL \buff|DATALSIG[0]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[2]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[2]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[3]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[4]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[5]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[5]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[6]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[7]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[7]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[8]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[9]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[9]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[10]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[11]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[12]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[12]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[13]~DUPLICATE_q\ : std_logic;
SIGNAL \buff|DATALSIG[13]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[14]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[15]~feeder_combout\ : std_logic;
SIGNAL \buff|DATALSIG[15]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[13]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[12]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[14]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~18_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~0_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_R_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~30_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~12_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~22_combout\ : std_logic;
SIGNAL \buffmijnshitup|DATA_L_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~4_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~16_combout\ : std_logic;
SIGNAL \tootherdac|Mux1~17_combout\ : std_logic;
SIGNAL \tootherdac|DOUT~q\ : std_logic;
SIGNAL \spi|Mux6~0_combout\ : std_logic;
SIGNAL \spi|Mux5~0_combout\ : std_logic;
SIGNAL \spi|Mux4~0_combout\ : std_logic;
SIGNAL \spi|Mux3~0_combout\ : std_logic;
SIGNAL \spi|Mux2~0_combout\ : std_logic;
SIGNAL \spi|Mux1~0_combout\ : std_logic;
SIGNAL \spi|Mux0~0_combout\ : std_logic;
SIGNAL \spi|Mux13~0_combout\ : std_logic;
SIGNAL \spi|Mux12~0_combout\ : std_logic;
SIGNAL \spi|Mux11~0_combout\ : std_logic;
SIGNAL \spi|Mux10~0_combout\ : std_logic;
SIGNAL \spi|Mux9~0_combout\ : std_logic;
SIGNAL \spi|Mux8~0_combout\ : std_logic;
SIGNAL \spi|Mux7~0_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \audioout|dack0~q\ : std_logic;
SIGNAL \audioout|dack1~q\ : std_logic;
SIGNAL \audioout|DACData_reg~0_combout\ : std_logic;
SIGNAL \audioout|Bcount~5_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \audioout|bck0~q\ : std_logic;
SIGNAL \audioout|bck1~q\ : std_logic;
SIGNAL \audioout|Bcount[0]~1_combout\ : std_logic;
SIGNAL \audioout|LRDATA[27]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[25]~feeder_combout\ : std_logic;
SIGNAL \audioout|Bcount~4_combout\ : std_logic;
SIGNAL \audioout|Bcount~3_combout\ : std_logic;
SIGNAL \audioout|Mux13~29_combout\ : std_logic;
SIGNAL \audioout|Mux13~12_combout\ : std_logic;
SIGNAL \audioout|Bcount~0_combout\ : std_logic;
SIGNAL \audioout|Bcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~2_combout\ : std_logic;
SIGNAL \audioout|LRDATA[2]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~17_combout\ : std_logic;
SIGNAL \audioout|LRDATA[4]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[5]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~0_combout\ : std_logic;
SIGNAL \audioout|LRDATA[9]~feeder_combout\ : std_logic;
SIGNAL \audioout|Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Mux13~21_combout\ : std_logic;
SIGNAL \audioout|LRDATA[15]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[13]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~4_combout\ : std_logic;
SIGNAL \audioout|LRDATA[23]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[20]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[19]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[16]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[17]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~25_combout\ : std_logic;
SIGNAL \audioout|LRDATA[22]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~8_combout\ : std_logic;
SIGNAL \audioout|Mux13~16_combout\ : std_logic;
SIGNAL \volume|scaled_music_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \volume|scaled_music_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \volume|clk_count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi|SDATA_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \meinclock|s_counter_lr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audioout|i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i2sin|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \meinclock|s_counter_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tootherdac|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \volume|scaled_vol\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audioout|LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \audioout|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buffmijnshitup|DATA_L_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \buffmijnshitup|DATA_R_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \buff|DATARSIG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \buff|DATALSIG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \volume|scalar\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sin|DATA_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|DATA_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \volume|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \spi|dig0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi|dig1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi|BYTE0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_shift_reg[5]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d6~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_DIN~input_o\ : std_logic;
SIGNAL \ALT_INV_LR_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_switch~input_o\ : std_logic;
SIGNAL \ALT_INV_CS~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \spi|ALT_INV_BYTE0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \volume|ALT_INV_scaled_vol[6]~25_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[5]~21_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[4]~17_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[3]~13_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[2]~9_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[1]~5_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[0]~1_combout\ : std_logic;
SIGNAL \spi|ALT_INV_dig1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi|ALT_INV_dig0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audioout|ALT_INV_i2c_counter\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \i2sin|ALT_INV_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_DATA_RDY_R~0_combout\ : std_logic;
SIGNAL \i2sin|ALT_INV_s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_s_current_lr~q\ : std_logic;
SIGNAL \volume|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \volume|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \volume|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \volume|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \volume|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \volume|ALT_INV_scalar~0_combout\ : std_logic;
SIGNAL \volume|ALT_INV_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \volume|ALT_INV_spoken~q\ : std_logic;
SIGNAL \volume|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \volume|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \volume|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i2sin|ALT_INV_DATA_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_DATA_RDY_L~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_DATA_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_DATA_RDY_R~q\ : std_logic;
SIGNAL \volume|ALT_INV_scalar\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.start~q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[6]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[5]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[4]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[3]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[2]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[1]~_emulated_q\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_vol[0]~_emulated_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \buffmijnshitup|ALT_INV_DATA_R_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \buffmijnshitup|ALT_INV_DATA_L_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_sck1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_sck0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_word_counter~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.b_stop0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_I2C_SCLK~combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~8_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~7_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d4~q\ : std_logic;
SIGNAL \audioout|ALT_INV_word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.d7~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~6_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~5_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a3~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a4~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~4_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b5~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b3~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b2~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.initialize~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~3_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a6~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~2_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a5~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~1_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a7~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d5~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d2~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d3~q\ : std_logic;
SIGNAL \audioout|ALT_INV_DACData_reg~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_bck1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_bck0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_dack1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_dack0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audioout|ALT_INV_I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b_stop1~q\ : std_logic;
SIGNAL \spi|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_SDATA_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \spi|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tootherdac|ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_s_current_lr~q\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_lr_clk~1_combout\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_lr_clk~0_combout\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_counter_lr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \meinclock|ALT_INV_v_lr_clk_enable~0_combout\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_counter_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.b_end~q\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_bit_clk~q\ : std_logic;
SIGNAL \meinclock|ALT_INV_s_lr_clk~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~10_combout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \volume|ALT_INV_clk_count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \volume|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \volume|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \volume|ALT_INV_scaled_music_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \volume|ALT_INV_scaled_music_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \tootherdac|ALT_INV_Mux1~30_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~26_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~22_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~18_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~29_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~25_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~21_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~17_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \tootherdac|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~12_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~8_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_switch <= switch;
ww_LR_CLK <= LR_CLK;
ww_BIT_CLK <= BIT_CLK;
ww_DIN <= DIN;
LR_CLK_OUT <= ww_LR_CLK_OUT;
BIT_CLK_OUT <= ww_BIT_CLK_OUT;
DOUT <= ww_DOUT;
ww_SCLK <= SCLK;
ww_SDATA <= SDATA;
ww_CS <= CS;
dig0 <= ww_dig0;
dig1 <= ww_dig1;
init_finish <= ww_init_finish;
AUD_MCLK <= ww_AUD_MCLK;
ww_AUD_BCLK <= AUD_BCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
ww_AUD_DACLRCK <= AUD_DACLRCK;
I2C_SDAT <= ww_I2C_SDAT;
I2C_SCLK <= ww_I2C_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\volume|Mult2~8_ACLR_bus\ <= (NOT \reset~inputCLKENA0_outclk\ & NOT \reset~inputCLKENA0_outclk\);

\volume|Mult2~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & NOT \clk~inputCLKENA0_outclk\);

\volume|Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\volume|Mult2~8_AX_bus\ <= (\volume|scaled_vol\(7) & \volume|scaled_vol[6]~26_combout\ & \volume|scaled_vol[5]~22_combout\ & \volume|scaled_vol[4]~18_combout\ & \volume|scaled_vol[3]~14_combout\ & \volume|scaled_vol[2]~10_combout\ & 
\volume|scaled_vol[1]~6_combout\ & \volume|scaled_vol[0]~2_combout\);

\volume|Mult2~8_AY_bus\ <= (\buff|DATARSIG\(15) & \buff|DATARSIG\(15) & \buff|DATARSIG\(15) & \buff|DATARSIG\(15) & \buff|DATARSIG\(14) & \buff|DATARSIG\(13) & \buff|DATARSIG\(12) & \buff|DATARSIG\(11) & \buff|DATARSIG\(10) & \buff|DATARSIG\(9)
& \buff|DATARSIG\(8) & \buff|DATARSIG\(7) & \buff|DATARSIG\(6) & \buff|DATARSIG\(5) & \buff|DATARSIG\(4) & \buff|DATARSIG\(3) & \buff|DATARSIG\(2) & \buff|DATARSIG\(1) & \buff|DATARSIG\(0));

\volume|Mult2~8_resulta\ <= \volume|Mult2~8_RESULTA_bus\(0);
\volume|Mult2~9\ <= \volume|Mult2~8_RESULTA_bus\(1);
\volume|Mult2~10\ <= \volume|Mult2~8_RESULTA_bus\(2);
\volume|Mult2~11\ <= \volume|Mult2~8_RESULTA_bus\(3);
\volume|Mult2~12\ <= \volume|Mult2~8_RESULTA_bus\(4);
\volume|Mult2~13\ <= \volume|Mult2~8_RESULTA_bus\(5);
\volume|Mult2~14\ <= \volume|Mult2~8_RESULTA_bus\(6);
\volume|scaled_music_R\(0) <= \volume|Mult2~8_RESULTA_bus\(7);
\volume|scaled_music_R\(1) <= \volume|Mult2~8_RESULTA_bus\(8);
\volume|scaled_music_R\(2) <= \volume|Mult2~8_RESULTA_bus\(9);
\volume|scaled_music_R\(3) <= \volume|Mult2~8_RESULTA_bus\(10);
\volume|scaled_music_R\(4) <= \volume|Mult2~8_RESULTA_bus\(11);
\volume|scaled_music_R\(5) <= \volume|Mult2~8_RESULTA_bus\(12);
\volume|scaled_music_R\(6) <= \volume|Mult2~8_RESULTA_bus\(13);
\volume|scaled_music_R\(7) <= \volume|Mult2~8_RESULTA_bus\(14);
\volume|scaled_music_R\(8) <= \volume|Mult2~8_RESULTA_bus\(15);
\volume|scaled_music_R\(9) <= \volume|Mult2~8_RESULTA_bus\(16);
\volume|scaled_music_R\(10) <= \volume|Mult2~8_RESULTA_bus\(17);
\volume|scaled_music_R\(11) <= \volume|Mult2~8_RESULTA_bus\(18);
\volume|scaled_music_R\(12) <= \volume|Mult2~8_RESULTA_bus\(19);
\volume|scaled_music_R\(13) <= \volume|Mult2~8_RESULTA_bus\(20);
\volume|scaled_music_R\(14) <= \volume|Mult2~8_RESULTA_bus\(21);
\volume|Mult2~30\ <= \volume|Mult2~8_RESULTA_bus\(22);
\volume|scaled_music_R\(15) <= \volume|Mult2~8_RESULTA_bus\(23);
\volume|Mult2~32\ <= \volume|Mult2~8_RESULTA_bus\(24);
\volume|Mult2~33\ <= \volume|Mult2~8_RESULTA_bus\(25);
\volume|Mult2~34\ <= \volume|Mult2~8_RESULTA_bus\(26);
\volume|Mult2~35\ <= \volume|Mult2~8_RESULTA_bus\(27);
\volume|Mult2~36\ <= \volume|Mult2~8_RESULTA_bus\(28);
\volume|Mult2~37\ <= \volume|Mult2~8_RESULTA_bus\(29);
\volume|Mult2~38\ <= \volume|Mult2~8_RESULTA_bus\(30);
\volume|Mult2~39\ <= \volume|Mult2~8_RESULTA_bus\(31);
\volume|Mult2~40\ <= \volume|Mult2~8_RESULTA_bus\(32);
\volume|Mult2~41\ <= \volume|Mult2~8_RESULTA_bus\(33);
\volume|Mult2~42\ <= \volume|Mult2~8_RESULTA_bus\(34);
\volume|Mult2~43\ <= \volume|Mult2~8_RESULTA_bus\(35);
\volume|Mult2~44\ <= \volume|Mult2~8_RESULTA_bus\(36);
\volume|Mult2~45\ <= \volume|Mult2~8_RESULTA_bus\(37);
\volume|Mult2~46\ <= \volume|Mult2~8_RESULTA_bus\(38);
\volume|Mult2~47\ <= \volume|Mult2~8_RESULTA_bus\(39);
\volume|Mult2~48\ <= \volume|Mult2~8_RESULTA_bus\(40);
\volume|Mult2~49\ <= \volume|Mult2~8_RESULTA_bus\(41);
\volume|Mult2~50\ <= \volume|Mult2~8_RESULTA_bus\(42);
\volume|Mult2~51\ <= \volume|Mult2~8_RESULTA_bus\(43);
\volume|Mult2~52\ <= \volume|Mult2~8_RESULTA_bus\(44);
\volume|Mult2~53\ <= \volume|Mult2~8_RESULTA_bus\(45);
\volume|Mult2~54\ <= \volume|Mult2~8_RESULTA_bus\(46);
\volume|Mult2~55\ <= \volume|Mult2~8_RESULTA_bus\(47);
\volume|Mult2~56\ <= \volume|Mult2~8_RESULTA_bus\(48);
\volume|Mult2~57\ <= \volume|Mult2~8_RESULTA_bus\(49);
\volume|Mult2~58\ <= \volume|Mult2~8_RESULTA_bus\(50);
\volume|Mult2~59\ <= \volume|Mult2~8_RESULTA_bus\(51);
\volume|Mult2~60\ <= \volume|Mult2~8_RESULTA_bus\(52);
\volume|Mult2~61\ <= \volume|Mult2~8_RESULTA_bus\(53);
\volume|Mult2~62\ <= \volume|Mult2~8_RESULTA_bus\(54);
\volume|Mult2~63\ <= \volume|Mult2~8_RESULTA_bus\(55);
\volume|Mult2~64\ <= \volume|Mult2~8_RESULTA_bus\(56);
\volume|Mult2~65\ <= \volume|Mult2~8_RESULTA_bus\(57);
\volume|Mult2~66\ <= \volume|Mult2~8_RESULTA_bus\(58);
\volume|Mult2~67\ <= \volume|Mult2~8_RESULTA_bus\(59);
\volume|Mult2~68\ <= \volume|Mult2~8_RESULTA_bus\(60);
\volume|Mult2~69\ <= \volume|Mult2~8_RESULTA_bus\(61);
\volume|Mult2~70\ <= \volume|Mult2~8_RESULTA_bus\(62);
\volume|Mult2~71\ <= \volume|Mult2~8_RESULTA_bus\(63);

\volume|Mult1~8_ACLR_bus\ <= (NOT \reset~inputCLKENA0_outclk\ & NOT \reset~inputCLKENA0_outclk\);

\volume|Mult1~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & NOT \clk~inputCLKENA0_outclk\);

\volume|Mult1~8_ENA_bus\ <= (vcc & vcc & vcc);

\volume|Mult1~8_AX_bus\ <= (\volume|scaled_vol\(7) & \volume|scaled_vol[6]~26_combout\ & \volume|scaled_vol[5]~22_combout\ & \volume|scaled_vol[4]~18_combout\ & \volume|scaled_vol[3]~14_combout\ & \volume|scaled_vol[2]~10_combout\ & 
\volume|scaled_vol[1]~6_combout\ & \volume|scaled_vol[0]~2_combout\);

\volume|Mult1~8_AY_bus\ <= (\buff|DATALSIG\(15) & \buff|DATALSIG\(15) & \buff|DATALSIG\(15) & \buff|DATALSIG\(15) & \buff|DATALSIG\(14) & \buff|DATALSIG\(13) & \buff|DATALSIG\(12) & \buff|DATALSIG\(11) & \buff|DATALSIG\(10) & \buff|DATALSIG\(9)
& \buff|DATALSIG\(8) & \buff|DATALSIG\(7) & \buff|DATALSIG\(6) & \buff|DATALSIG\(5) & \buff|DATALSIG\(4) & \buff|DATALSIG\(3) & \buff|DATALSIG\(2) & \buff|DATALSIG\(1) & \buff|DATALSIG\(0));

\volume|Mult1~8_resulta\ <= \volume|Mult1~8_RESULTA_bus\(0);
\volume|Mult1~9\ <= \volume|Mult1~8_RESULTA_bus\(1);
\volume|Mult1~10\ <= \volume|Mult1~8_RESULTA_bus\(2);
\volume|Mult1~11\ <= \volume|Mult1~8_RESULTA_bus\(3);
\volume|Mult1~12\ <= \volume|Mult1~8_RESULTA_bus\(4);
\volume|Mult1~13\ <= \volume|Mult1~8_RESULTA_bus\(5);
\volume|Mult1~14\ <= \volume|Mult1~8_RESULTA_bus\(6);
\volume|scaled_music_L\(0) <= \volume|Mult1~8_RESULTA_bus\(7);
\volume|scaled_music_L\(1) <= \volume|Mult1~8_RESULTA_bus\(8);
\volume|scaled_music_L\(2) <= \volume|Mult1~8_RESULTA_bus\(9);
\volume|scaled_music_L\(3) <= \volume|Mult1~8_RESULTA_bus\(10);
\volume|scaled_music_L\(4) <= \volume|Mult1~8_RESULTA_bus\(11);
\volume|scaled_music_L\(5) <= \volume|Mult1~8_RESULTA_bus\(12);
\volume|scaled_music_L\(6) <= \volume|Mult1~8_RESULTA_bus\(13);
\volume|scaled_music_L\(7) <= \volume|Mult1~8_RESULTA_bus\(14);
\volume|scaled_music_L\(8) <= \volume|Mult1~8_RESULTA_bus\(15);
\volume|scaled_music_L\(9) <= \volume|Mult1~8_RESULTA_bus\(16);
\volume|scaled_music_L\(10) <= \volume|Mult1~8_RESULTA_bus\(17);
\volume|scaled_music_L\(11) <= \volume|Mult1~8_RESULTA_bus\(18);
\volume|scaled_music_L\(12) <= \volume|Mult1~8_RESULTA_bus\(19);
\volume|scaled_music_L\(13) <= \volume|Mult1~8_RESULTA_bus\(20);
\volume|scaled_music_L\(14) <= \volume|Mult1~8_RESULTA_bus\(21);
\volume|Mult1~30\ <= \volume|Mult1~8_RESULTA_bus\(22);
\volume|scaled_music_L\(15) <= \volume|Mult1~8_RESULTA_bus\(23);
\volume|Mult1~32\ <= \volume|Mult1~8_RESULTA_bus\(24);
\volume|Mult1~33\ <= \volume|Mult1~8_RESULTA_bus\(25);
\volume|Mult1~34\ <= \volume|Mult1~8_RESULTA_bus\(26);
\volume|Mult1~35\ <= \volume|Mult1~8_RESULTA_bus\(27);
\volume|Mult1~36\ <= \volume|Mult1~8_RESULTA_bus\(28);
\volume|Mult1~37\ <= \volume|Mult1~8_RESULTA_bus\(29);
\volume|Mult1~38\ <= \volume|Mult1~8_RESULTA_bus\(30);
\volume|Mult1~39\ <= \volume|Mult1~8_RESULTA_bus\(31);
\volume|Mult1~40\ <= \volume|Mult1~8_RESULTA_bus\(32);
\volume|Mult1~41\ <= \volume|Mult1~8_RESULTA_bus\(33);
\volume|Mult1~42\ <= \volume|Mult1~8_RESULTA_bus\(34);
\volume|Mult1~43\ <= \volume|Mult1~8_RESULTA_bus\(35);
\volume|Mult1~44\ <= \volume|Mult1~8_RESULTA_bus\(36);
\volume|Mult1~45\ <= \volume|Mult1~8_RESULTA_bus\(37);
\volume|Mult1~46\ <= \volume|Mult1~8_RESULTA_bus\(38);
\volume|Mult1~47\ <= \volume|Mult1~8_RESULTA_bus\(39);
\volume|Mult1~48\ <= \volume|Mult1~8_RESULTA_bus\(40);
\volume|Mult1~49\ <= \volume|Mult1~8_RESULTA_bus\(41);
\volume|Mult1~50\ <= \volume|Mult1~8_RESULTA_bus\(42);
\volume|Mult1~51\ <= \volume|Mult1~8_RESULTA_bus\(43);
\volume|Mult1~52\ <= \volume|Mult1~8_RESULTA_bus\(44);
\volume|Mult1~53\ <= \volume|Mult1~8_RESULTA_bus\(45);
\volume|Mult1~54\ <= \volume|Mult1~8_RESULTA_bus\(46);
\volume|Mult1~55\ <= \volume|Mult1~8_RESULTA_bus\(47);
\volume|Mult1~56\ <= \volume|Mult1~8_RESULTA_bus\(48);
\volume|Mult1~57\ <= \volume|Mult1~8_RESULTA_bus\(49);
\volume|Mult1~58\ <= \volume|Mult1~8_RESULTA_bus\(50);
\volume|Mult1~59\ <= \volume|Mult1~8_RESULTA_bus\(51);
\volume|Mult1~60\ <= \volume|Mult1~8_RESULTA_bus\(52);
\volume|Mult1~61\ <= \volume|Mult1~8_RESULTA_bus\(53);
\volume|Mult1~62\ <= \volume|Mult1~8_RESULTA_bus\(54);
\volume|Mult1~63\ <= \volume|Mult1~8_RESULTA_bus\(55);
\volume|Mult1~64\ <= \volume|Mult1~8_RESULTA_bus\(56);
\volume|Mult1~65\ <= \volume|Mult1~8_RESULTA_bus\(57);
\volume|Mult1~66\ <= \volume|Mult1~8_RESULTA_bus\(58);
\volume|Mult1~67\ <= \volume|Mult1~8_RESULTA_bus\(59);
\volume|Mult1~68\ <= \volume|Mult1~8_RESULTA_bus\(60);
\volume|Mult1~69\ <= \volume|Mult1~8_RESULTA_bus\(61);
\volume|Mult1~70\ <= \volume|Mult1~8_RESULTA_bus\(62);
\volume|Mult1~71\ <= \volume|Mult1~8_RESULTA_bus\(63);

\volume|Mult0~8_AX_bus\ <= (NOT \volume|scalar\(7) & \volume|scalar\(6) & \volume|scalar\(5) & \volume|scalar\(4) & \volume|scalar\(3) & \volume|scalar\(2) & \volume|scalar\(1) & \volume|scalar\(0));

\volume|Mult0~8_AY_bus\ <= (\spi|BYTE0\(6) & \spi|BYTE0\(5) & \spi|BYTE0\(4) & \spi|BYTE0\(3) & \spi|BYTE0\(2) & \spi|BYTE0\(1) & \spi|BYTE0\(0));

\volume|Mult0~8_resulta\ <= \volume|Mult0~8_RESULTA_bus\(0);
\volume|Mult0~9\ <= \volume|Mult0~8_RESULTA_bus\(1);
\volume|Mult0~10\ <= \volume|Mult0~8_RESULTA_bus\(2);
\volume|Mult0~11\ <= \volume|Mult0~8_RESULTA_bus\(3);
\volume|Mult0~12\ <= \volume|Mult0~8_RESULTA_bus\(4);
\volume|Mult0~13\ <= \volume|Mult0~8_RESULTA_bus\(5);
\volume|Mult0~14\ <= \volume|Mult0~8_RESULTA_bus\(6);
\volume|Mult0~15\ <= \volume|Mult0~8_RESULTA_bus\(7);
\volume|Mult0~16\ <= \volume|Mult0~8_RESULTA_bus\(8);
\volume|Mult0~17\ <= \volume|Mult0~8_RESULTA_bus\(9);
\volume|Mult0~18\ <= \volume|Mult0~8_RESULTA_bus\(10);
\volume|Mult0~19\ <= \volume|Mult0~8_RESULTA_bus\(11);
\volume|Mult0~20\ <= \volume|Mult0~8_RESULTA_bus\(12);
\volume|Mult0~21\ <= \volume|Mult0~8_RESULTA_bus\(13);
\volume|Mult0~22\ <= \volume|Mult0~8_RESULTA_bus\(14);
\volume|Mult0~23\ <= \volume|Mult0~8_RESULTA_bus\(15);
\volume|Mult0~24\ <= \volume|Mult0~8_RESULTA_bus\(16);
\volume|Mult0~25\ <= \volume|Mult0~8_RESULTA_bus\(17);
\volume|Mult0~26\ <= \volume|Mult0~8_RESULTA_bus\(18);
\volume|Mult0~27\ <= \volume|Mult0~8_RESULTA_bus\(19);
\volume|Mult0~28\ <= \volume|Mult0~8_RESULTA_bus\(20);
\volume|Mult0~29\ <= \volume|Mult0~8_RESULTA_bus\(21);
\volume|Mult0~30\ <= \volume|Mult0~8_RESULTA_bus\(22);
\volume|Mult0~31\ <= \volume|Mult0~8_RESULTA_bus\(23);
\volume|Mult0~32\ <= \volume|Mult0~8_RESULTA_bus\(24);
\volume|Mult0~33\ <= \volume|Mult0~8_RESULTA_bus\(25);
\volume|Mult0~34\ <= \volume|Mult0~8_RESULTA_bus\(26);
\volume|Mult0~35\ <= \volume|Mult0~8_RESULTA_bus\(27);
\volume|Mult0~36\ <= \volume|Mult0~8_RESULTA_bus\(28);
\volume|Mult0~37\ <= \volume|Mult0~8_RESULTA_bus\(29);
\volume|Mult0~38\ <= \volume|Mult0~8_RESULTA_bus\(30);
\volume|Mult0~39\ <= \volume|Mult0~8_RESULTA_bus\(31);
\volume|Mult0~40\ <= \volume|Mult0~8_RESULTA_bus\(32);
\volume|Mult0~41\ <= \volume|Mult0~8_RESULTA_bus\(33);
\volume|Mult0~42\ <= \volume|Mult0~8_RESULTA_bus\(34);
\volume|Mult0~43\ <= \volume|Mult0~8_RESULTA_bus\(35);
\volume|Mult0~44\ <= \volume|Mult0~8_RESULTA_bus\(36);
\volume|Mult0~45\ <= \volume|Mult0~8_RESULTA_bus\(37);
\volume|Mult0~46\ <= \volume|Mult0~8_RESULTA_bus\(38);
\volume|Mult0~47\ <= \volume|Mult0~8_RESULTA_bus\(39);
\volume|Mult0~48\ <= \volume|Mult0~8_RESULTA_bus\(40);
\volume|Mult0~49\ <= \volume|Mult0~8_RESULTA_bus\(41);
\volume|Mult0~50\ <= \volume|Mult0~8_RESULTA_bus\(42);
\volume|Mult0~51\ <= \volume|Mult0~8_RESULTA_bus\(43);
\volume|Mult0~52\ <= \volume|Mult0~8_RESULTA_bus\(44);
\volume|Mult0~53\ <= \volume|Mult0~8_RESULTA_bus\(45);
\volume|Mult0~54\ <= \volume|Mult0~8_RESULTA_bus\(46);
\volume|Mult0~55\ <= \volume|Mult0~8_RESULTA_bus\(47);
\volume|Mult0~56\ <= \volume|Mult0~8_RESULTA_bus\(48);
\volume|Mult0~57\ <= \volume|Mult0~8_RESULTA_bus\(49);
\volume|Mult0~58\ <= \volume|Mult0~8_RESULTA_bus\(50);
\volume|Mult0~59\ <= \volume|Mult0~8_RESULTA_bus\(51);
\volume|Mult0~60\ <= \volume|Mult0~8_RESULTA_bus\(52);
\volume|Mult0~61\ <= \volume|Mult0~8_RESULTA_bus\(53);
\volume|Mult0~62\ <= \volume|Mult0~8_RESULTA_bus\(54);
\volume|Mult0~63\ <= \volume|Mult0~8_RESULTA_bus\(55);
\volume|Mult0~64\ <= \volume|Mult0~8_RESULTA_bus\(56);
\volume|Mult0~65\ <= \volume|Mult0~8_RESULTA_bus\(57);
\volume|Mult0~66\ <= \volume|Mult0~8_RESULTA_bus\(58);
\volume|Mult0~67\ <= \volume|Mult0~8_RESULTA_bus\(59);
\volume|Mult0~68\ <= \volume|Mult0~8_RESULTA_bus\(60);
\volume|Mult0~69\ <= \volume|Mult0~8_RESULTA_bus\(61);
\volume|Mult0~70\ <= \volume|Mult0~8_RESULTA_bus\(62);
\volume|Mult0~71\ <= \volume|Mult0~8_RESULTA_bus\(63);
\i2sin|ALT_INV_shift_reg[5]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[5]~DUPLICATE_q\;
\audioout|ALT_INV_state.d6~DUPLICATE_q\ <= NOT \audioout|state.d6~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ <= NOT \audioout|Bcount[0]~DUPLICATE_q\;
\meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\ <= NOT \meinclock|s_counter_bit[0]~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[3]~DUPLICATE_q\ <= NOT \audioout|Bcount[3]~DUPLICATE_q\;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_DIN~input_o\ <= NOT \DIN~input_o\;
\ALT_INV_LR_CLK~input_o\ <= NOT \LR_CLK~input_o\;
\ALT_INV_switch~input_o\ <= NOT \switch~input_o\;
\ALT_INV_CS~input_o\ <= NOT \CS~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\spi|ALT_INV_BYTE0\(6) <= NOT \spi|BYTE0\(6);
\volume|ALT_INV_scaled_vol[6]~25_combout\ <= NOT \volume|scaled_vol[6]~25_combout\;
\spi|ALT_INV_BYTE0\(5) <= NOT \spi|BYTE0\(5);
\volume|ALT_INV_scaled_vol[5]~21_combout\ <= NOT \volume|scaled_vol[5]~21_combout\;
\spi|ALT_INV_BYTE0\(4) <= NOT \spi|BYTE0\(4);
\volume|ALT_INV_scaled_vol[4]~17_combout\ <= NOT \volume|scaled_vol[4]~17_combout\;
\spi|ALT_INV_BYTE0\(3) <= NOT \spi|BYTE0\(3);
\volume|ALT_INV_scaled_vol[3]~13_combout\ <= NOT \volume|scaled_vol[3]~13_combout\;
\spi|ALT_INV_BYTE0\(2) <= NOT \spi|BYTE0\(2);
\volume|ALT_INV_scaled_vol[2]~9_combout\ <= NOT \volume|scaled_vol[2]~9_combout\;
\spi|ALT_INV_BYTE0\(1) <= NOT \spi|BYTE0\(1);
\volume|ALT_INV_scaled_vol[1]~5_combout\ <= NOT \volume|scaled_vol[1]~5_combout\;
\spi|ALT_INV_BYTE0\(0) <= NOT \spi|BYTE0\(0);
\volume|ALT_INV_scaled_vol[0]~1_combout\ <= NOT \volume|scaled_vol[0]~1_combout\;
\spi|ALT_INV_dig1\(6) <= NOT \spi|dig1\(6);
\spi|ALT_INV_dig1\(5) <= NOT \spi|dig1\(5);
\spi|ALT_INV_dig1\(4) <= NOT \spi|dig1\(4);
\spi|ALT_INV_dig1\(3) <= NOT \spi|dig1\(3);
\spi|ALT_INV_dig1\(2) <= NOT \spi|dig1\(2);
\spi|ALT_INV_dig1\(1) <= NOT \spi|dig1\(1);
\spi|ALT_INV_dig1\(0) <= NOT \spi|dig1\(0);
\spi|ALT_INV_dig0\(6) <= NOT \spi|dig0\(6);
\spi|ALT_INV_dig0\(5) <= NOT \spi|dig0\(5);
\spi|ALT_INV_dig0\(4) <= NOT \spi|dig0\(4);
\spi|ALT_INV_dig0\(3) <= NOT \spi|dig0\(3);
\spi|ALT_INV_dig0\(2) <= NOT \spi|dig0\(2);
\spi|ALT_INV_dig0\(1) <= NOT \spi|dig0\(1);
\spi|ALT_INV_dig0\(0) <= NOT \spi|dig0\(0);
\audioout|ALT_INV_i2c_counter\(3) <= NOT \audioout|i2c_counter\(3);
\audioout|ALT_INV_i2c_counter\(4) <= NOT \audioout|i2c_counter\(4);
\audioout|ALT_INV_i2c_counter\(5) <= NOT \audioout|i2c_counter\(5);
\i2sin|ALT_INV_shift_reg\(15) <= NOT \i2sin|shift_reg\(15);
\i2sin|ALT_INV_shift_reg\(14) <= NOT \i2sin|shift_reg\(14);
\i2sin|ALT_INV_shift_reg\(13) <= NOT \i2sin|shift_reg\(13);
\i2sin|ALT_INV_shift_reg\(12) <= NOT \i2sin|shift_reg\(12);
\i2sin|ALT_INV_shift_reg\(11) <= NOT \i2sin|shift_reg\(11);
\i2sin|ALT_INV_shift_reg\(10) <= NOT \i2sin|shift_reg\(10);
\i2sin|ALT_INV_shift_reg\(9) <= NOT \i2sin|shift_reg\(9);
\i2sin|ALT_INV_shift_reg\(8) <= NOT \i2sin|shift_reg\(8);
\i2sin|ALT_INV_shift_reg\(7) <= NOT \i2sin|shift_reg\(7);
\i2sin|ALT_INV_shift_reg\(6) <= NOT \i2sin|shift_reg\(6);
\i2sin|ALT_INV_shift_reg\(4) <= NOT \i2sin|shift_reg\(4);
\i2sin|ALT_INV_shift_reg\(3) <= NOT \i2sin|shift_reg\(3);
\i2sin|ALT_INV_shift_reg\(2) <= NOT \i2sin|shift_reg\(2);
\i2sin|ALT_INV_shift_reg\(1) <= NOT \i2sin|shift_reg\(1);
\i2sin|ALT_INV_DATA_RDY_R~0_combout\ <= NOT \i2sin|DATA_RDY_R~0_combout\;
\i2sin|ALT_INV_s_parallel_load~q\ <= NOT \i2sin|s_parallel_load~q\;
\i2sin|ALT_INV_s_current_lr~q\ <= NOT \i2sin|s_current_lr~q\;
\i2sin|ALT_INV_shift_reg\(0) <= NOT \i2sin|shift_reg\(0);
\volume|ALT_INV_Equal0~4_combout\ <= NOT \volume|Equal0~4_combout\;
\volume|ALT_INV_Equal0~3_combout\ <= NOT \volume|Equal0~3_combout\;
\volume|ALT_INV_Equal0~2_combout\ <= NOT \volume|Equal0~2_combout\;
\volume|ALT_INV_Equal0~1_combout\ <= NOT \volume|Equal0~1_combout\;
\volume|ALT_INV_Equal0~0_combout\ <= NOT \volume|Equal0~0_combout\;
\volume|ALT_INV_scalar~0_combout\ <= NOT \volume|scalar~0_combout\;
\volume|ALT_INV_count\(1) <= NOT \volume|count\(1);
\volume|ALT_INV_count\(0) <= NOT \volume|count\(0);
\volume|ALT_INV_spoken~q\ <= NOT \volume|spoken~q\;
\volume|ALT_INV_LessThan0~2_combout\ <= NOT \volume|LessThan0~2_combout\;
\volume|ALT_INV_LessThan0~1_combout\ <= NOT \volume|LessThan0~1_combout\;
\volume|ALT_INV_LessThan0~0_combout\ <= NOT \volume|LessThan0~0_combout\;
\audioout|ALT_INV_i2c_counter\(6) <= NOT \audioout|i2c_counter\(6);
\i2sin|ALT_INV_DATA_L\(15) <= NOT \i2sin|DATA_L\(15);
\i2sin|ALT_INV_DATA_L\(14) <= NOT \i2sin|DATA_L\(14);
\i2sin|ALT_INV_DATA_L\(13) <= NOT \i2sin|DATA_L\(13);
\i2sin|ALT_INV_DATA_L\(12) <= NOT \i2sin|DATA_L\(12);
\i2sin|ALT_INV_DATA_L\(11) <= NOT \i2sin|DATA_L\(11);
\i2sin|ALT_INV_DATA_L\(10) <= NOT \i2sin|DATA_L\(10);
\i2sin|ALT_INV_DATA_L\(9) <= NOT \i2sin|DATA_L\(9);
\i2sin|ALT_INV_DATA_L\(8) <= NOT \i2sin|DATA_L\(8);
\i2sin|ALT_INV_DATA_L\(7) <= NOT \i2sin|DATA_L\(7);
\i2sin|ALT_INV_DATA_L\(6) <= NOT \i2sin|DATA_L\(6);
\i2sin|ALT_INV_DATA_L\(5) <= NOT \i2sin|DATA_L\(5);
\i2sin|ALT_INV_DATA_L\(4) <= NOT \i2sin|DATA_L\(4);
\i2sin|ALT_INV_DATA_L\(3) <= NOT \i2sin|DATA_L\(3);
\i2sin|ALT_INV_DATA_L\(2) <= NOT \i2sin|DATA_L\(2);
\i2sin|ALT_INV_DATA_L\(1) <= NOT \i2sin|DATA_L\(1);
\i2sin|ALT_INV_DATA_RDY_L~q\ <= NOT \i2sin|DATA_RDY_L~q\;
\i2sin|ALT_INV_DATA_L\(0) <= NOT \i2sin|DATA_L\(0);
\i2sin|ALT_INV_DATA_R\(15) <= NOT \i2sin|DATA_R\(15);
\i2sin|ALT_INV_DATA_R\(14) <= NOT \i2sin|DATA_R\(14);
\i2sin|ALT_INV_DATA_R\(13) <= NOT \i2sin|DATA_R\(13);
\i2sin|ALT_INV_DATA_R\(12) <= NOT \i2sin|DATA_R\(12);
\i2sin|ALT_INV_DATA_R\(11) <= NOT \i2sin|DATA_R\(11);
\i2sin|ALT_INV_DATA_R\(10) <= NOT \i2sin|DATA_R\(10);
\i2sin|ALT_INV_DATA_R\(9) <= NOT \i2sin|DATA_R\(9);
\i2sin|ALT_INV_DATA_R\(8) <= NOT \i2sin|DATA_R\(8);
\i2sin|ALT_INV_DATA_R\(7) <= NOT \i2sin|DATA_R\(7);
\i2sin|ALT_INV_DATA_R\(6) <= NOT \i2sin|DATA_R\(6);
\i2sin|ALT_INV_DATA_R\(5) <= NOT \i2sin|DATA_R\(5);
\i2sin|ALT_INV_DATA_R\(4) <= NOT \i2sin|DATA_R\(4);
\i2sin|ALT_INV_DATA_R\(3) <= NOT \i2sin|DATA_R\(3);
\i2sin|ALT_INV_DATA_R\(2) <= NOT \i2sin|DATA_R\(2);
\i2sin|ALT_INV_DATA_R\(1) <= NOT \i2sin|DATA_R\(1);
\i2sin|ALT_INV_DATA_RDY_R~q\ <= NOT \i2sin|DATA_RDY_R~q\;
\i2sin|ALT_INV_DATA_R\(0) <= NOT \i2sin|DATA_R\(0);
\volume|ALT_INV_scalar\(7) <= NOT \volume|scalar\(7);
\volume|ALT_INV_scalar\(6) <= NOT \volume|scalar\(6);
\volume|ALT_INV_scalar\(5) <= NOT \volume|scalar\(5);
\volume|ALT_INV_scalar\(4) <= NOT \volume|scalar\(4);
\volume|ALT_INV_scalar\(3) <= NOT \volume|scalar\(3);
\volume|ALT_INV_scalar\(2) <= NOT \volume|scalar\(2);
\volume|ALT_INV_scalar\(1) <= NOT \volume|scalar\(1);
\volume|ALT_INV_scalar\(0) <= NOT \volume|scalar\(0);
\audioout|ALT_INV_i2c_counter\(7) <= NOT \audioout|i2c_counter\(7);
\audioout|ALT_INV_i2c_counter\(8) <= NOT \audioout|i2c_counter\(8);
\audioout|ALT_INV_state.start~q\ <= NOT \audioout|state.start~q\;
\volume|ALT_INV_scaled_vol[6]~_emulated_q\ <= NOT \volume|scaled_vol[6]~_emulated_q\;
\volume|ALT_INV_scaled_vol[5]~_emulated_q\ <= NOT \volume|scaled_vol[5]~_emulated_q\;
\volume|ALT_INV_scaled_vol[4]~_emulated_q\ <= NOT \volume|scaled_vol[4]~_emulated_q\;
\volume|ALT_INV_scaled_vol[3]~_emulated_q\ <= NOT \volume|scaled_vol[3]~_emulated_q\;
\volume|ALT_INV_scaled_vol[2]~_emulated_q\ <= NOT \volume|scaled_vol[2]~_emulated_q\;
\volume|ALT_INV_scaled_vol[1]~_emulated_q\ <= NOT \volume|scaled_vol[1]~_emulated_q\;
\volume|ALT_INV_scaled_vol[0]~_emulated_q\ <= NOT \volume|scaled_vol[0]~_emulated_q\;
\audioout|ALT_INV_i2c_counter\(1) <= NOT \audioout|i2c_counter\(1);
\audioout|ALT_INV_Selector29~0_combout\ <= NOT \audioout|Selector29~0_combout\;
\buffmijnshitup|ALT_INV_DATA_R_OUT\(5) <= NOT \buffmijnshitup|DATA_R_OUT\(5);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(7) <= NOT \buffmijnshitup|DATA_R_OUT\(7);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(4) <= NOT \buffmijnshitup|DATA_R_OUT\(4);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(6) <= NOT \buffmijnshitup|DATA_R_OUT\(6);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(13) <= NOT \buffmijnshitup|DATA_R_OUT\(13);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(15) <= NOT \buffmijnshitup|DATA_R_OUT\(15);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(12) <= NOT \buffmijnshitup|DATA_R_OUT\(12);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(14) <= NOT \buffmijnshitup|DATA_R_OUT\(14);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(5) <= NOT \buffmijnshitup|DATA_L_OUT\(5);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(7) <= NOT \buffmijnshitup|DATA_L_OUT\(7);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(4) <= NOT \buffmijnshitup|DATA_L_OUT\(4);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(6) <= NOT \buffmijnshitup|DATA_L_OUT\(6);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(13) <= NOT \buffmijnshitup|DATA_L_OUT\(13);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(15) <= NOT \buffmijnshitup|DATA_L_OUT\(15);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(12) <= NOT \buffmijnshitup|DATA_L_OUT\(12);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(14) <= NOT \buffmijnshitup|DATA_L_OUT\(14);
\audioout|ALT_INV_Selector0~1_combout\ <= NOT \audioout|Selector0~1_combout\;
\audioout|ALT_INV_Selector0~0_combout\ <= NOT \audioout|Selector0~0_combout\;
\audioout|ALT_INV_next_state_i2c~0_combout\ <= NOT \audioout|next_state_i2c~0_combout\;
\audioout|ALT_INV_sck1~q\ <= NOT \audioout|sck1~q\;
\audioout|ALT_INV_sck0~q\ <= NOT \audioout|sck0~q\;
\audioout|ALT_INV_word_counter~0_combout\ <= NOT \audioout|word_counter~0_combout\;
\audioout|ALT_INV_LRDATA\(26) <= NOT \audioout|LRDATA\(26);
\audioout|ALT_INV_LRDATA\(24) <= NOT \audioout|LRDATA\(24);
\audioout|ALT_INV_LRDATA\(27) <= NOT \audioout|LRDATA\(27);
\audioout|ALT_INV_LRDATA\(25) <= NOT \audioout|LRDATA\(25);
\audioout|ALT_INV_LRDATA\(18) <= NOT \audioout|LRDATA\(18);
\audioout|ALT_INV_LRDATA\(16) <= NOT \audioout|LRDATA\(16);
\audioout|ALT_INV_LRDATA\(19) <= NOT \audioout|LRDATA\(19);
\audioout|ALT_INV_LRDATA\(17) <= NOT \audioout|LRDATA\(17);
\audioout|ALT_INV_LRDATA\(10) <= NOT \audioout|LRDATA\(10);
\audioout|ALT_INV_LRDATA\(8) <= NOT \audioout|LRDATA\(8);
\audioout|ALT_INV_LRDATA\(11) <= NOT \audioout|LRDATA\(11);
\audioout|ALT_INV_LRDATA\(9) <= NOT \audioout|LRDATA\(9);
\audioout|ALT_INV_LRDATA\(2) <= NOT \audioout|LRDATA\(2);
\audioout|ALT_INV_LRDATA\(0) <= NOT \audioout|LRDATA\(0);
\audioout|ALT_INV_LRDATA\(3) <= NOT \audioout|LRDATA\(3);
\audioout|ALT_INV_LRDATA\(1) <= NOT \audioout|LRDATA\(1);
\audioout|ALT_INV_state.b_stop0~q\ <= NOT \audioout|state.b_stop0~q\;
\buffmijnshitup|ALT_INV_DATA_R_OUT\(1) <= NOT \buffmijnshitup|DATA_R_OUT\(1);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(3) <= NOT \buffmijnshitup|DATA_R_OUT\(3);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(0) <= NOT \buffmijnshitup|DATA_R_OUT\(0);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(2) <= NOT \buffmijnshitup|DATA_R_OUT\(2);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(9) <= NOT \buffmijnshitup|DATA_R_OUT\(9);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(11) <= NOT \buffmijnshitup|DATA_R_OUT\(11);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(8) <= NOT \buffmijnshitup|DATA_R_OUT\(8);
\buffmijnshitup|ALT_INV_DATA_R_OUT\(10) <= NOT \buffmijnshitup|DATA_R_OUT\(10);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(1) <= NOT \buffmijnshitup|DATA_L_OUT\(1);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(3) <= NOT \buffmijnshitup|DATA_L_OUT\(3);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(0) <= NOT \buffmijnshitup|DATA_L_OUT\(0);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(2) <= NOT \buffmijnshitup|DATA_L_OUT\(2);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(9) <= NOT \buffmijnshitup|DATA_L_OUT\(9);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(11) <= NOT \buffmijnshitup|DATA_L_OUT\(11);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(8) <= NOT \buffmijnshitup|DATA_L_OUT\(8);
\buffmijnshitup|ALT_INV_DATA_L_OUT\(10) <= NOT \buffmijnshitup|DATA_L_OUT\(10);
\audioout|ALT_INV_I2C_SCLK~combout\ <= NOT \audioout|I2C_SCLK~combout\;
\audioout|ALT_INV_i2c_counter\(9) <= NOT \audioout|i2c_counter\(9);
\audioout|ALT_INV_state.d_ack~q\ <= NOT \audioout|state.d_ack~q\;
\audioout|ALT_INV_state.a_ack~q\ <= NOT \audioout|state.a_ack~q\;
\audioout|ALT_INV_state.b_ack~q\ <= NOT \audioout|state.b_ack~q\;
\audioout|ALT_INV_Selector30~8_combout\ <= NOT \audioout|Selector30~8_combout\;
\audioout|ALT_INV_Selector30~7_combout\ <= NOT \audioout|Selector30~7_combout\;
\audioout|ALT_INV_state.d4~q\ <= NOT \audioout|state.d4~q\;
\audioout|ALT_INV_word_count\(3) <= NOT \audioout|word_count\(3);
\audioout|ALT_INV_state.d7~q\ <= NOT \audioout|state.d7~q\;
\audioout|ALT_INV_Selector30~6_combout\ <= NOT \audioout|Selector30~6_combout\;
\audioout|ALT_INV_Selector30~5_combout\ <= NOT \audioout|Selector30~5_combout\;
\audioout|ALT_INV_state.a3~q\ <= NOT \audioout|state.a3~q\;
\audioout|ALT_INV_state.a4~q\ <= NOT \audioout|state.a4~q\;
\audioout|ALT_INV_state.d1~q\ <= NOT \audioout|state.d1~q\;
\audioout|ALT_INV_Selector30~4_combout\ <= NOT \audioout|Selector30~4_combout\;
\audioout|ALT_INV_state.b5~q\ <= NOT \audioout|state.b5~q\;
\audioout|ALT_INV_state.b3~q\ <= NOT \audioout|state.b3~q\;
\audioout|ALT_INV_state.b2~q\ <= NOT \audioout|state.b2~q\;
\audioout|ALT_INV_state.initialize~q\ <= NOT \audioout|state.initialize~q\;
\audioout|ALT_INV_Selector30~3_combout\ <= NOT \audioout|Selector30~3_combout\;
\audioout|ALT_INV_state.a6~q\ <= NOT \audioout|state.a6~q\;
\audioout|ALT_INV_Selector30~2_combout\ <= NOT \audioout|Selector30~2_combout\;
\audioout|ALT_INV_state.a5~q\ <= NOT \audioout|state.a5~q\;
\audioout|ALT_INV_Selector30~1_combout\ <= NOT \audioout|Selector30~1_combout\;
\audioout|ALT_INV_state.a7~q\ <= NOT \audioout|state.a7~q\;
\audioout|ALT_INV_state.d5~q\ <= NOT \audioout|state.d5~q\;
\audioout|ALT_INV_Selector30~0_combout\ <= NOT \audioout|Selector30~0_combout\;
\audioout|ALT_INV_state.d0~q\ <= NOT \audioout|state.d0~q\;
\audioout|ALT_INV_state.d2~q\ <= NOT \audioout|state.d2~q\;
\audioout|ALT_INV_state.d3~q\ <= NOT \audioout|state.d3~q\;
\audioout|ALT_INV_word_count\(2) <= NOT \audioout|word_count\(2);
\audioout|ALT_INV_word_count\(1) <= NOT \audioout|word_count\(1);
\audioout|ALT_INV_word_count\(0) <= NOT \audioout|word_count\(0);
\audioout|ALT_INV_DACData_reg~0_combout\ <= NOT \audioout|DACData_reg~0_combout\;
\audioout|ALT_INV_bck1~q\ <= NOT \audioout|bck1~q\;
\audioout|ALT_INV_bck0~q\ <= NOT \audioout|bck0~q\;
\audioout|ALT_INV_dack1~q\ <= NOT \audioout|dack1~q\;
\audioout|ALT_INV_dack0~q\ <= NOT \audioout|dack0~q\;
\audioout|ALT_INV_Bcount\(0) <= NOT \audioout|Bcount\(0);
\audioout|ALT_INV_LRDATA\(30) <= NOT \audioout|LRDATA\(30);
\audioout|ALT_INV_LRDATA\(28) <= NOT \audioout|LRDATA\(28);
\audioout|ALT_INV_LRDATA\(31) <= NOT \audioout|LRDATA\(31);
\audioout|ALT_INV_LRDATA\(29) <= NOT \audioout|LRDATA\(29);
\audioout|ALT_INV_LRDATA\(22) <= NOT \audioout|LRDATA\(22);
\audioout|ALT_INV_LRDATA\(20) <= NOT \audioout|LRDATA\(20);
\audioout|ALT_INV_LRDATA\(23) <= NOT \audioout|LRDATA\(23);
\audioout|ALT_INV_LRDATA\(21) <= NOT \audioout|LRDATA\(21);
\audioout|ALT_INV_LRDATA\(14) <= NOT \audioout|LRDATA\(14);
\audioout|ALT_INV_LRDATA\(12) <= NOT \audioout|LRDATA\(12);
\audioout|ALT_INV_LRDATA\(15) <= NOT \audioout|LRDATA\(15);
\audioout|ALT_INV_LRDATA\(13) <= NOT \audioout|LRDATA\(13);
\audioout|ALT_INV_LRDATA\(6) <= NOT \audioout|LRDATA\(6);
\audioout|ALT_INV_Bcount\(1) <= NOT \audioout|Bcount\(1);
\audioout|ALT_INV_Bcount\(2) <= NOT \audioout|Bcount\(2);
\audioout|ALT_INV_LRDATA\(4) <= NOT \audioout|LRDATA\(4);
\audioout|ALT_INV_LRDATA\(7) <= NOT \audioout|LRDATA\(7);
\audioout|ALT_INV_LRDATA\(5) <= NOT \audioout|LRDATA\(5);
\audioout|ALT_INV_I2C_SCLK~0_combout\ <= NOT \audioout|I2C_SCLK~0_combout\;
\audioout|ALT_INV_state.b_stop1~q\ <= NOT \audioout|state.b_stop1~q\;
\spi|ALT_INV_Mux7~0_combout\ <= NOT \spi|Mux7~0_combout\;
\spi|ALT_INV_Mux8~0_combout\ <= NOT \spi|Mux8~0_combout\;
\spi|ALT_INV_Mux9~0_combout\ <= NOT \spi|Mux9~0_combout\;
\spi|ALT_INV_Mux10~0_combout\ <= NOT \spi|Mux10~0_combout\;
\spi|ALT_INV_Mux11~0_combout\ <= NOT \spi|Mux11~0_combout\;
\spi|ALT_INV_Mux12~0_combout\ <= NOT \spi|Mux12~0_combout\;
\spi|ALT_INV_Mux13~0_combout\ <= NOT \spi|Mux13~0_combout\;
\spi|ALT_INV_SDATA_register\(7) <= NOT \spi|SDATA_register\(7);
\spi|ALT_INV_SDATA_register\(6) <= NOT \spi|SDATA_register\(6);
\spi|ALT_INV_SDATA_register\(5) <= NOT \spi|SDATA_register\(5);
\spi|ALT_INV_SDATA_register\(4) <= NOT \spi|SDATA_register\(4);
\spi|ALT_INV_Mux0~0_combout\ <= NOT \spi|Mux0~0_combout\;
\spi|ALT_INV_Mux1~0_combout\ <= NOT \spi|Mux1~0_combout\;
\spi|ALT_INV_Mux2~0_combout\ <= NOT \spi|Mux2~0_combout\;
\spi|ALT_INV_Mux3~0_combout\ <= NOT \spi|Mux3~0_combout\;
\spi|ALT_INV_Mux4~0_combout\ <= NOT \spi|Mux4~0_combout\;
\spi|ALT_INV_Mux5~0_combout\ <= NOT \spi|Mux5~0_combout\;
\spi|ALT_INV_Mux6~0_combout\ <= NOT \spi|Mux6~0_combout\;
\spi|ALT_INV_SDATA_register\(3) <= NOT \spi|SDATA_register\(3);
\spi|ALT_INV_SDATA_register\(2) <= NOT \spi|SDATA_register\(2);
\spi|ALT_INV_SDATA_register\(1) <= NOT \spi|SDATA_register\(1);
\spi|ALT_INV_SDATA_register\(0) <= NOT \spi|SDATA_register\(0);
\tootherdac|ALT_INV_DOUT~0_combout\ <= NOT \tootherdac|DOUT~0_combout\;
\tootherdac|ALT_INV_counter\(0) <= NOT \tootherdac|counter\(0);
\tootherdac|ALT_INV_counter\(1) <= NOT \tootherdac|counter\(1);
\tootherdac|ALT_INV_counter\(2) <= NOT \tootherdac|counter\(2);
\tootherdac|ALT_INV_Mux1~16_combout\ <= NOT \tootherdac|Mux1~16_combout\;
\tootherdac|ALT_INV_s_current_lr~q\ <= NOT \tootherdac|s_current_lr~q\;
\tootherdac|ALT_INV_counter\(3) <= NOT \tootherdac|counter\(3);
\meinclock|ALT_INV_s_lr_clk~1_combout\ <= NOT \meinclock|s_lr_clk~1_combout\;
\meinclock|ALT_INV_s_lr_clk~0_combout\ <= NOT \meinclock|s_lr_clk~0_combout\;
\meinclock|ALT_INV_s_counter_lr\(1) <= NOT \meinclock|s_counter_lr\(1);
\meinclock|ALT_INV_s_counter_lr\(2) <= NOT \meinclock|s_counter_lr\(2);
\meinclock|ALT_INV_s_counter_lr\(3) <= NOT \meinclock|s_counter_lr\(3);
\meinclock|ALT_INV_s_counter_lr\(4) <= NOT \meinclock|s_counter_lr\(4);
\meinclock|ALT_INV_v_lr_clk_enable~0_combout\ <= NOT \meinclock|v_lr_clk_enable~0_combout\;
\meinclock|ALT_INV_s_counter_bit\(0) <= NOT \meinclock|s_counter_bit\(0);
\meinclock|ALT_INV_s_counter_lr\(0) <= NOT \meinclock|s_counter_lr\(0);
\audioout|ALT_INV_Bcount\(4) <= NOT \audioout|Bcount\(4);
\audioout|ALT_INV_Bcount\(3) <= NOT \audioout|Bcount\(3);
\audioout|ALT_INV_i2c_counter\(2) <= NOT \audioout|i2c_counter\(2);
\audioout|ALT_INV_state.b_end~q\ <= NOT \audioout|state.b_end~q\;
\meinclock|ALT_INV_s_bit_clk~q\ <= NOT \meinclock|s_bit_clk~q\;
\meinclock|ALT_INV_s_lr_clk~q\ <= NOT \meinclock|s_lr_clk~q\;
\audioout|ALT_INV_Selector30~10_combout\ <= NOT \audioout|Selector30~10_combout\;
\volume|ALT_INV_Add2~29_sumout\ <= NOT \volume|Add2~29_sumout\;
\volume|ALT_INV_Add1~25_sumout\ <= NOT \volume|Add1~25_sumout\;
\volume|ALT_INV_Add2~25_sumout\ <= NOT \volume|Add2~25_sumout\;
\volume|ALT_INV_Add1~21_sumout\ <= NOT \volume|Add1~21_sumout\;
\volume|ALT_INV_Add2~21_sumout\ <= NOT \volume|Add2~21_sumout\;
\volume|ALT_INV_Add1~17_sumout\ <= NOT \volume|Add1~17_sumout\;
\volume|ALT_INV_Add2~17_sumout\ <= NOT \volume|Add2~17_sumout\;
\volume|ALT_INV_Add1~13_sumout\ <= NOT \volume|Add1~13_sumout\;
\volume|ALT_INV_Add2~13_sumout\ <= NOT \volume|Add2~13_sumout\;
\volume|ALT_INV_Add1~9_sumout\ <= NOT \volume|Add1~9_sumout\;
\volume|ALT_INV_Add2~9_sumout\ <= NOT \volume|Add2~9_sumout\;
\volume|ALT_INV_Add1~5_sumout\ <= NOT \volume|Add1~5_sumout\;
\volume|ALT_INV_Add2~5_sumout\ <= NOT \volume|Add2~5_sumout\;
\volume|ALT_INV_Add1~1_sumout\ <= NOT \volume|Add1~1_sumout\;
\volume|ALT_INV_Add2~1_sumout\ <= NOT \volume|Add2~1_sumout\;
\volume|ALT_INV_clk_count\(8) <= NOT \volume|clk_count\(8);
\volume|ALT_INV_clk_count\(7) <= NOT \volume|clk_count\(7);
\volume|ALT_INV_clk_count\(6) <= NOT \volume|clk_count\(6);
\volume|ALT_INV_clk_count\(11) <= NOT \volume|clk_count\(11);
\volume|ALT_INV_clk_count\(5) <= NOT \volume|clk_count\(5);
\volume|ALT_INV_clk_count\(4) <= NOT \volume|clk_count\(4);
\volume|ALT_INV_clk_count\(3) <= NOT \volume|clk_count\(3);
\volume|ALT_INV_clk_count\(2) <= NOT \volume|clk_count\(2);
\volume|ALT_INV_clk_count\(1) <= NOT \volume|clk_count\(1);
\volume|ALT_INV_clk_count\(0) <= NOT \volume|clk_count\(0);
\volume|ALT_INV_clk_count\(13) <= NOT \volume|clk_count\(13);
\volume|ALT_INV_clk_count\(14) <= NOT \volume|clk_count\(14);
\volume|ALT_INV_clk_count\(17) <= NOT \volume|clk_count\(17);
\volume|ALT_INV_clk_count\(16) <= NOT \volume|clk_count\(16);
\volume|ALT_INV_clk_count\(15) <= NOT \volume|clk_count\(15);
\volume|ALT_INV_clk_count\(12) <= NOT \volume|clk_count\(12);
\volume|ALT_INV_clk_count\(10) <= NOT \volume|clk_count\(10);
\volume|ALT_INV_clk_count\(9) <= NOT \volume|clk_count\(9);
\volume|ALT_INV_clk_count\(19) <= NOT \volume|clk_count\(19);
\volume|ALT_INV_clk_count\(18) <= NOT \volume|clk_count\(18);
\volume|ALT_INV_Mult0~22\ <= NOT \volume|Mult0~22\;
\volume|ALT_INV_Mult0~21\ <= NOT \volume|Mult0~21\;
\volume|ALT_INV_Mult0~20\ <= NOT \volume|Mult0~20\;
\volume|ALT_INV_Mult0~19\ <= NOT \volume|Mult0~19\;
\volume|ALT_INV_Mult0~18\ <= NOT \volume|Mult0~18\;
\volume|ALT_INV_Mult0~17\ <= NOT \volume|Mult0~17\;
\volume|ALT_INV_Mult0~16\ <= NOT \volume|Mult0~16\;
\volume|ALT_INV_Mult0~15\ <= NOT \volume|Mult0~15\;
\volume|ALT_INV_scaled_music_L\(15) <= NOT \volume|scaled_music_L\(15);
\volume|ALT_INV_scaled_music_L\(14) <= NOT \volume|scaled_music_L\(14);
\volume|ALT_INV_scaled_music_L\(13) <= NOT \volume|scaled_music_L\(13);
\volume|ALT_INV_scaled_music_L\(12) <= NOT \volume|scaled_music_L\(12);
\volume|ALT_INV_scaled_music_L\(11) <= NOT \volume|scaled_music_L\(11);
\volume|ALT_INV_scaled_music_L\(10) <= NOT \volume|scaled_music_L\(10);
\volume|ALT_INV_scaled_music_L\(9) <= NOT \volume|scaled_music_L\(9);
\volume|ALT_INV_scaled_music_L\(8) <= NOT \volume|scaled_music_L\(8);
\volume|ALT_INV_scaled_music_L\(7) <= NOT \volume|scaled_music_L\(7);
\volume|ALT_INV_scaled_music_L\(6) <= NOT \volume|scaled_music_L\(6);
\volume|ALT_INV_scaled_music_L\(4) <= NOT \volume|scaled_music_L\(4);
\volume|ALT_INV_scaled_music_L\(3) <= NOT \volume|scaled_music_L\(3);
\volume|ALT_INV_scaled_music_L\(1) <= NOT \volume|scaled_music_L\(1);
\volume|ALT_INV_scaled_music_L\(0) <= NOT \volume|scaled_music_L\(0);
\volume|ALT_INV_scaled_music_R\(15) <= NOT \volume|scaled_music_R\(15);
\volume|ALT_INV_scaled_music_R\(13) <= NOT \volume|scaled_music_R\(13);
\volume|ALT_INV_scaled_music_R\(10) <= NOT \volume|scaled_music_R\(10);
\volume|ALT_INV_scaled_music_R\(9) <= NOT \volume|scaled_music_R\(9);
\volume|ALT_INV_scaled_music_R\(8) <= NOT \volume|scaled_music_R\(8);
\volume|ALT_INV_scaled_music_R\(5) <= NOT \volume|scaled_music_R\(5);
\volume|ALT_INV_scaled_music_R\(4) <= NOT \volume|scaled_music_R\(4);
\volume|ALT_INV_scaled_music_R\(2) <= NOT \volume|scaled_music_R\(2);
\volume|ALT_INV_scaled_music_R\(1) <= NOT \volume|scaled_music_R\(1);
\volume|ALT_INV_scaled_music_R\(0) <= NOT \volume|scaled_music_R\(0);
\tootherdac|ALT_INV_Mux1~30_combout\ <= NOT \tootherdac|Mux1~30_combout\;
\tootherdac|ALT_INV_Mux1~26_combout\ <= NOT \tootherdac|Mux1~26_combout\;
\tootherdac|ALT_INV_Mux1~22_combout\ <= NOT \tootherdac|Mux1~22_combout\;
\tootherdac|ALT_INV_Mux1~18_combout\ <= NOT \tootherdac|Mux1~18_combout\;
\audioout|ALT_INV_Mux13~29_combout\ <= NOT \audioout|Mux13~29_combout\;
\audioout|ALT_INV_Mux13~25_combout\ <= NOT \audioout|Mux13~25_combout\;
\audioout|ALT_INV_Mux13~21_combout\ <= NOT \audioout|Mux13~21_combout\;
\audioout|ALT_INV_Mux13~17_combout\ <= NOT \audioout|Mux13~17_combout\;
\tootherdac|ALT_INV_Mux1~12_combout\ <= NOT \tootherdac|Mux1~12_combout\;
\tootherdac|ALT_INV_Mux1~8_combout\ <= NOT \tootherdac|Mux1~8_combout\;
\tootherdac|ALT_INV_Mux1~4_combout\ <= NOT \tootherdac|Mux1~4_combout\;
\tootherdac|ALT_INV_Mux1~0_combout\ <= NOT \tootherdac|Mux1~0_combout\;
\audioout|ALT_INV_Mux13~12_combout\ <= NOT \audioout|Mux13~12_combout\;
\audioout|ALT_INV_Mux13~8_combout\ <= NOT \audioout|Mux13~8_combout\;
\audioout|ALT_INV_Mux13~4_combout\ <= NOT \audioout|Mux13~4_combout\;
\audioout|ALT_INV_Mux13~0_combout\ <= NOT \audioout|Mux13~0_combout\;

-- Location: IOOBUF_X12_Y81_N2
\I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \audioout|Selector30~9_combout\,
	oe => \audioout|WideOr32~combout\,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOOBUF_X86_Y0_N2
\LR_CLK_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tootherdac|LR_CLK_OUT~0_combout\,
	devoe => ww_devoe,
	o => ww_LR_CLK_OUT);

-- Location: IOOBUF_X82_Y0_N59
\BIT_CLK_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tootherdac|BIT_CLK_OUT~0_combout\,
	devoe => ww_devoe,
	o => ww_BIT_CLK_OUT);

-- Location: IOOBUF_X74_Y0_N42
\DOUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tootherdac|DOUT~q\,
	devoe => ww_devoe,
	o => ww_DOUT);

-- Location: IOOBUF_X89_Y8_N39
\dig0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(0),
	devoe => ww_devoe,
	o => ww_dig0(0));

-- Location: IOOBUF_X89_Y11_N79
\dig0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(1),
	devoe => ww_devoe,
	o => ww_dig0(1));

-- Location: IOOBUF_X89_Y11_N96
\dig0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(2),
	devoe => ww_devoe,
	o => ww_dig0(2));

-- Location: IOOBUF_X89_Y4_N79
\dig0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(3),
	devoe => ww_devoe,
	o => ww_dig0(3));

-- Location: IOOBUF_X89_Y13_N56
\dig0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(4),
	devoe => ww_devoe,
	o => ww_dig0(4));

-- Location: IOOBUF_X89_Y13_N39
\dig0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(5),
	devoe => ww_devoe,
	o => ww_dig0(5));

-- Location: IOOBUF_X89_Y4_N96
\dig0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig0\(6),
	devoe => ww_devoe,
	o => ww_dig0(6));

-- Location: IOOBUF_X89_Y6_N39
\dig1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(0),
	devoe => ww_devoe,
	o => ww_dig1(0));

-- Location: IOOBUF_X89_Y6_N56
\dig1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(1),
	devoe => ww_devoe,
	o => ww_dig1(1));

-- Location: IOOBUF_X89_Y16_N39
\dig1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(2),
	devoe => ww_devoe,
	o => ww_dig1(2));

-- Location: IOOBUF_X89_Y16_N56
\dig1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(3),
	devoe => ww_devoe,
	o => ww_dig1(3));

-- Location: IOOBUF_X89_Y15_N39
\dig1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(4),
	devoe => ww_devoe,
	o => ww_dig1(4));

-- Location: IOOBUF_X89_Y15_N56
\dig1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(5),
	devoe => ww_devoe,
	o => ww_dig1(5));

-- Location: IOOBUF_X89_Y8_N56
\dig1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|dig1\(6),
	devoe => ww_devoe,
	o => ww_dig1(6));

-- Location: IOOBUF_X52_Y0_N2
\init_finish~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \audioout|state.b_end~q\,
	devoe => ww_devoe,
	o => ww_init_finish);

-- Location: IOOBUF_X2_Y81_N76
\AUD_MCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \audioout|i2c_counter\(2),
	devoe => ww_devoe,
	o => ww_AUD_MCLK);

-- Location: IOOBUF_X16_Y81_N2
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \audioout|Mux13~16_combout\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X12_Y81_N19
\I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \audioout|I2C_SCLK~combout\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y2_N48
\meinclock|s_counter_bit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_bit[0]~0_combout\ = !\meinclock|s_counter_bit\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \meinclock|ALT_INV_s_counter_bit\(0),
	combout => \meinclock|s_counter_bit[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G7
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: FF_X37_Y2_N49
\meinclock|s_counter_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_bit[0]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_bit\(0));

-- Location: LABCELL_X36_Y2_N0
\audioout|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~5_sumout\ = SUM(( \meinclock|s_counter_bit\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))
-- \audioout|Add1~6\ = CARRY(( \meinclock|s_counter_bit\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_i2c_counter\(1),
	datac => \meinclock|ALT_INV_s_counter_bit\(0),
	cin => GND,
	sumout => \audioout|Add1~5_sumout\,
	cout => \audioout|Add1~6\);

-- Location: FF_X36_Y2_N44
\audioout|i2c_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|Add1~5_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(1));

-- Location: LABCELL_X36_Y2_N3
\audioout|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~1_sumout\ = SUM(( \audioout|i2c_counter\(2) ) + ( GND ) + ( \audioout|Add1~6\ ))
-- \audioout|Add1~2\ = CARRY(( \audioout|i2c_counter\(2) ) + ( GND ) + ( \audioout|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(2),
	cin => \audioout|Add1~6\,
	sumout => \audioout|Add1~1_sumout\,
	cout => \audioout|Add1~2\);

-- Location: FF_X36_Y2_N4
\audioout|i2c_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~1_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(2));

-- Location: LABCELL_X36_Y2_N6
\audioout|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~33_sumout\ = SUM(( \audioout|i2c_counter\(3) ) + ( GND ) + ( \audioout|Add1~2\ ))
-- \audioout|Add1~34\ = CARRY(( \audioout|i2c_counter\(3) ) + ( GND ) + ( \audioout|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(3),
	cin => \audioout|Add1~2\,
	sumout => \audioout|Add1~33_sumout\,
	cout => \audioout|Add1~34\);

-- Location: FF_X36_Y2_N8
\audioout|i2c_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~33_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(3));

-- Location: LABCELL_X36_Y2_N9
\audioout|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~29_sumout\ = SUM(( \audioout|i2c_counter\(4) ) + ( GND ) + ( \audioout|Add1~34\ ))
-- \audioout|Add1~30\ = CARRY(( \audioout|i2c_counter\(4) ) + ( GND ) + ( \audioout|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(4),
	cin => \audioout|Add1~34\,
	sumout => \audioout|Add1~29_sumout\,
	cout => \audioout|Add1~30\);

-- Location: FF_X36_Y2_N11
\audioout|i2c_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~29_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(4));

-- Location: LABCELL_X36_Y2_N12
\audioout|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~25_sumout\ = SUM(( \audioout|i2c_counter\(5) ) + ( GND ) + ( \audioout|Add1~30\ ))
-- \audioout|Add1~26\ = CARRY(( \audioout|i2c_counter\(5) ) + ( GND ) + ( \audioout|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(5),
	cin => \audioout|Add1~30\,
	sumout => \audioout|Add1~25_sumout\,
	cout => \audioout|Add1~26\);

-- Location: FF_X36_Y2_N14
\audioout|i2c_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~25_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(5));

-- Location: LABCELL_X36_Y2_N15
\audioout|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~21_sumout\ = SUM(( \audioout|i2c_counter\(6) ) + ( GND ) + ( \audioout|Add1~26\ ))
-- \audioout|Add1~22\ = CARRY(( \audioout|i2c_counter\(6) ) + ( GND ) + ( \audioout|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(6),
	cin => \audioout|Add1~26\,
	sumout => \audioout|Add1~21_sumout\,
	cout => \audioout|Add1~22\);

-- Location: FF_X36_Y2_N17
\audioout|i2c_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~21_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(6));

-- Location: LABCELL_X36_Y2_N18
\audioout|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~17_sumout\ = SUM(( \audioout|i2c_counter\(7) ) + ( GND ) + ( \audioout|Add1~22\ ))
-- \audioout|Add1~18\ = CARRY(( \audioout|i2c_counter\(7) ) + ( GND ) + ( \audioout|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(7),
	cin => \audioout|Add1~22\,
	sumout => \audioout|Add1~17_sumout\,
	cout => \audioout|Add1~18\);

-- Location: FF_X36_Y2_N20
\audioout|i2c_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~17_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(7));

-- Location: LABCELL_X36_Y2_N21
\audioout|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~13_sumout\ = SUM(( \audioout|i2c_counter\(8) ) + ( GND ) + ( \audioout|Add1~18\ ))
-- \audioout|Add1~14\ = CARRY(( \audioout|i2c_counter\(8) ) + ( GND ) + ( \audioout|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(8),
	cin => \audioout|Add1~18\,
	sumout => \audioout|Add1~13_sumout\,
	cout => \audioout|Add1~14\);

-- Location: FF_X36_Y2_N23
\audioout|i2c_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Add1~13_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(8));

-- Location: LABCELL_X36_Y2_N24
\audioout|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~9_sumout\ = SUM(( \audioout|i2c_counter\(9) ) + ( GND ) + ( \audioout|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_i2c_counter\(9),
	cin => \audioout|Add1~14\,
	sumout => \audioout|Add1~9_sumout\);

-- Location: FF_X36_Y2_N29
\audioout|i2c_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|Add1~9_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(9));

-- Location: LABCELL_X36_Y1_N24
\audioout|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector29~0_combout\ = ( !\audioout|I2C_SCLK~combout\ & ( \audioout|state.b_stop0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_state.b_stop0~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector29~0_combout\);

-- Location: LABCELL_X36_Y2_N54
\audioout|word_count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|word_count[0]~1_combout\ = ( !\audioout|word_count\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|word_count[0]~1_combout\);

-- Location: LABCELL_X36_Y2_N51
\audioout|word_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|word_counter~0_combout\ = ( \audioout|state.b_end~q\ ) # ( !\audioout|state.b_end~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset~input_o\,
	dataf => \audioout|ALT_INV_state.b_end~q\,
	combout => \audioout|word_counter~0_combout\);

-- Location: FF_X35_Y3_N14
\audioout|sck0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|I2C_SCLK~combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|sck0~q\);

-- Location: FF_X35_Y3_N17
\audioout|sck1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|sck0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|sck1~q\);

-- Location: LABCELL_X35_Y3_N21
\audioout|next_state_i2c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|next_state_i2c~0_combout\ = ( !\audioout|sck0~q\ & ( \audioout|sck1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_sck1~q\,
	dataf => \audioout|ALT_INV_sck0~q\,
	combout => \audioout|next_state_i2c~0_combout\);

-- Location: FF_X35_Y3_N26
\audioout|state.b3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b2~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b3~DUPLICATE_q\);

-- Location: FF_X35_Y3_N43
\audioout|state.b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b3~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b4~q\);

-- Location: FF_X37_Y3_N43
\audioout|state.b5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b4~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b5~q\);

-- Location: FF_X35_Y3_N19
\audioout|state.b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b5~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b6~q\);

-- Location: FF_X35_Y3_N35
\audioout|state.b7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b6~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b7~q\);

-- Location: FF_X35_Y3_N53
\audioout|state.b_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b7~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_ack~q\);

-- Location: FF_X35_Y3_N1
\audioout|state.a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b_ack~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a0~q\);

-- Location: FF_X35_Y3_N41
\audioout|state.a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a1~q\);

-- Location: FF_X35_Y3_N23
\audioout|state.a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a1~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a2~q\);

-- Location: FF_X35_Y3_N32
\audioout|state.a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a2~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a3~q\);

-- Location: FF_X35_Y2_N11
\audioout|state.a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a3~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a4~q\);

-- Location: FF_X35_Y2_N14
\audioout|state.a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a4~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a5~q\);

-- Location: FF_X35_Y3_N11
\audioout|state.a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a5~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a6~q\);

-- Location: LABCELL_X37_Y3_N15
\audioout|state.a7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.a7~feeder_combout\ = ( \audioout|state.a6~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \audioout|ALT_INV_state.a6~q\,
	combout => \audioout|state.a7~feeder_combout\);

-- Location: FF_X37_Y3_N17
\audioout|state.a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.a7~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a7~q\);

-- Location: FF_X37_Y3_N41
\audioout|state.a_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a7~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a_ack~q\);

-- Location: FF_X35_Y3_N38
\audioout|state.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a_ack~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d0~q\);

-- Location: FF_X35_Y3_N49
\audioout|state.d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d1~q\);

-- Location: FF_X35_Y2_N7
\audioout|state.d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d1~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d2~q\);

-- Location: FF_X37_Y3_N58
\audioout|state.d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d2~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d3~q\);

-- Location: FF_X36_Y1_N44
\audioout|state.d4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d3~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d4~q\);

-- Location: FF_X36_Y1_N20
\audioout|state.d5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d4~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d5~q\);

-- Location: FF_X36_Y1_N49
\audioout|state.d6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d5~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d6~q\);

-- Location: FF_X36_Y1_N31
\audioout|state.d7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d6~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d7~DUPLICATE_q\);

-- Location: FF_X35_Y3_N5
\audioout|state.d_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d7~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d_ack~q\);

-- Location: FF_X36_Y2_N35
\audioout|word_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioout|ALT_INV_I2C_SCLK~combout\,
	asdata => \audioout|word_count[0]~1_combout\,
	clrn => \audioout|ALT_INV_word_counter~0_combout\,
	sload => VCC,
	ena => \audioout|state.d_ack~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|word_count\(0));

-- Location: LABCELL_X36_Y2_N42
\audioout|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux10~0_combout\ = ( \audioout|word_count\(1) & ( !\audioout|word_count\(0) ) ) # ( !\audioout|word_count\(1) & ( \audioout|word_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_word_count\(1),
	combout => \audioout|Mux10~0_combout\);

-- Location: FF_X36_Y2_N59
\audioout|word_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioout|ALT_INV_I2C_SCLK~combout\,
	asdata => \audioout|Mux10~0_combout\,
	clrn => \audioout|ALT_INV_word_counter~0_combout\,
	sload => VCC,
	ena => \audioout|state.d_ack~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|word_count\(1));

-- Location: LABCELL_X36_Y2_N30
\audioout|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux1~0_combout\ = ( \audioout|word_count\(0) & ( !\audioout|word_count\(2) $ (!\audioout|word_count\(1)) ) ) # ( !\audioout|word_count\(0) & ( \audioout|word_count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Mux1~0_combout\);

-- Location: FF_X36_Y2_N56
\audioout|word_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioout|ALT_INV_I2C_SCLK~combout\,
	asdata => \audioout|Mux1~0_combout\,
	clrn => \audioout|ALT_INV_word_counter~0_combout\,
	sload => VCC,
	ena => \audioout|state.d_ack~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|word_count\(2));

-- Location: LABCELL_X36_Y2_N45
\audioout|word_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|word_count[3]~0_combout\ = ( \audioout|word_count\(2) & ( !\audioout|word_count\(3) $ (((!\audioout|word_count\(0)) # ((!\audioout|state.d_ack~q\) # (!\audioout|word_count\(1))))) ) ) # ( !\audioout|word_count\(2) & ( \audioout|word_count\(3) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(0),
	datab => \audioout|ALT_INV_word_count\(3),
	datac => \audioout|ALT_INV_state.d_ack~q\,
	datad => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_word_count\(2),
	combout => \audioout|word_count[3]~0_combout\);

-- Location: FF_X36_Y2_N50
\audioout|word_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audioout|ALT_INV_I2C_SCLK~combout\,
	asdata => \audioout|word_count[3]~0_combout\,
	clrn => \audioout|ALT_INV_word_counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|word_count\(3));

-- Location: LABCELL_X35_Y3_N51
\audioout|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector0~0_combout\ = ( \audioout|state.d_ack~q\ & ( !\audioout|sck0~q\ & ( \audioout|sck1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_sck1~q\,
	datae => \audioout|ALT_INV_state.d_ack~q\,
	dataf => \audioout|ALT_INV_sck0~q\,
	combout => \audioout|Selector0~0_combout\);

-- Location: LABCELL_X36_Y1_N6
\audioout|Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector29~1_combout\ = ( \audioout|Selector0~0_combout\ & ( \audioout|word_count\(0) & ( ((!\audioout|word_count\(2) & (!\audioout|word_count\(1) & \audioout|word_count\(3)))) # (\audioout|Selector29~0_combout\) ) ) ) # ( 
-- !\audioout|Selector0~0_combout\ & ( \audioout|word_count\(0) & ( \audioout|Selector29~0_combout\ ) ) ) # ( \audioout|Selector0~0_combout\ & ( !\audioout|word_count\(0) & ( \audioout|Selector29~0_combout\ ) ) ) # ( !\audioout|Selector0~0_combout\ & ( 
-- !\audioout|word_count\(0) & ( \audioout|Selector29~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector29~0_combout\,
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_word_count\(1),
	datad => \audioout|ALT_INV_word_count\(3),
	datae => \audioout|ALT_INV_Selector0~0_combout\,
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Selector29~1_combout\);

-- Location: FF_X36_Y1_N8
\audioout|state.b_stop0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Selector29~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_stop0~q\);

-- Location: LABCELL_X37_Y2_N51
\audioout|next_state.b_stop1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|next_state.b_stop1~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( \audioout|state.b_stop0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.b_stop0~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|next_state.b_stop1~0_combout\);

-- Location: FF_X37_Y2_N53
\audioout|state.b_stop1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|next_state.b_stop1~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_stop1~q\);

-- Location: LABCELL_X36_Y2_N48
\audioout|I2C_SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~0_combout\ = ( \audioout|state.b_stop1~q\ ) # ( !\audioout|state.b_stop1~q\ & ( \audioout|state.b_end~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b_end~q\,
	dataf => \audioout|ALT_INV_state.b_stop1~q\,
	combout => \audioout|I2C_SCLK~0_combout\);

-- Location: FF_X36_Y2_N41
\audioout|state.b_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|I2C_SCLK~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_end~q\);

-- Location: LABCELL_X36_Y2_N57
\audioout|I2C_SCLK\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~combout\ = LCELL(( \audioout|state.b_stop1~q\ ) # ( !\audioout|state.b_stop1~q\ & ( (\audioout|state.b_end~q\) # (\audioout|i2c_counter\(9)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_i2c_counter\(9),
	datac => \audioout|ALT_INV_state.b_end~q\,
	dataf => \audioout|ALT_INV_state.b_stop1~q\,
	combout => \audioout|I2C_SCLK~combout\);

-- Location: LABCELL_X36_Y2_N33
\audioout|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector0~1_combout\ = ( !\audioout|I2C_SCLK~combout\ & ( !\audioout|state.initialize~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.initialize~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector0~1_combout\);

-- Location: LABCELL_X36_Y2_N36
\audioout|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector0~2_combout\ = ( \audioout|word_count\(0) & ( \audioout|word_count\(3) & ( (!\audioout|Selector0~1_combout\ & ((!\audioout|Selector0~0_combout\) # ((!\audioout|word_count\(1) & !\audioout|word_count\(2))))) ) ) ) # ( 
-- !\audioout|word_count\(0) & ( \audioout|word_count\(3) & ( (!\audioout|Selector0~1_combout\ & !\audioout|Selector0~0_combout\) ) ) ) # ( \audioout|word_count\(0) & ( !\audioout|word_count\(3) & ( (!\audioout|Selector0~1_combout\ & 
-- !\audioout|Selector0~0_combout\) ) ) ) # ( !\audioout|word_count\(0) & ( !\audioout|word_count\(3) & ( (!\audioout|Selector0~1_combout\ & !\audioout|Selector0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector0~1_combout\,
	datab => \audioout|ALT_INV_word_count\(1),
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_Selector0~0_combout\,
	datae => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_word_count\(3),
	combout => \audioout|Selector0~2_combout\);

-- Location: FF_X36_Y2_N38
\audioout|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Selector0~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.initialize~q\);

-- Location: LABCELL_X37_Y2_N36
\audioout|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector1~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( (!\audioout|state.initialize~q\) # ((!\audioout|next_state_i2c~0_combout\ & \audioout|state.start~q\)) ) ) # ( !\audioout|I2C_SCLK~combout\ & ( (!\audioout|next_state_i2c~0_combout\ & 
-- \audioout|state.start~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.initialize~q\,
	datac => \audioout|ALT_INV_next_state_i2c~0_combout\,
	datad => \audioout|ALT_INV_state.start~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector1~0_combout\);

-- Location: FF_X37_Y2_N37
\audioout|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Selector1~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.start~q\);

-- Location: FF_X35_Y3_N8
\audioout|state.b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.start~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b0~q\);

-- Location: FF_X35_Y3_N29
\audioout|state.b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b1~q\);

-- Location: FF_X35_Y3_N46
\audioout|state.b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b1~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b2~q\);

-- Location: FF_X35_Y3_N25
\audioout|state.b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b2~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b3~q\);

-- Location: LABCELL_X37_Y3_N42
\audioout|Selector30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~4_combout\ = ( !\audioout|state.b5~q\ & ( \audioout|state.initialize~q\ & ( (!\audioout|state.b2~q\ & !\audioout|state.b3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b2~q\,
	datac => \audioout|ALT_INV_state.b3~q\,
	datae => \audioout|ALT_INV_state.b5~q\,
	dataf => \audioout|ALT_INV_state.initialize~q\,
	combout => \audioout|Selector30~4_combout\);

-- Location: FF_X36_Y1_N50
\audioout|state.d6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d5~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d6~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N0
\audioout|Selector30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~3_combout\ = ( \audioout|state.d6~DUPLICATE_q\ & ( (!\audioout|word_count\(1) & (!\audioout|state.a6~q\ & !\audioout|state.d5~q\)) ) ) # ( !\audioout|state.d6~DUPLICATE_q\ & ( (!\audioout|state.a6~q\ & ((!\audioout|state.d5~q\) # 
-- (\audioout|word_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datab => \audioout|ALT_INV_state.a6~q\,
	datac => \audioout|ALT_INV_state.d5~q\,
	dataf => \audioout|ALT_INV_state.d6~DUPLICATE_q\,
	combout => \audioout|Selector30~3_combout\);

-- Location: LABCELL_X35_Y2_N9
\audioout|Selector30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~5_combout\ = ( \audioout|state.d1~q\ & ( \audioout|state.a3~q\ & ( ((\audioout|word_count\(2) & ((\audioout|word_count\(0)) # (\audioout|state.a4~q\)))) # (\audioout|word_count\(1)) ) ) ) # ( !\audioout|state.d1~q\ & ( 
-- \audioout|state.a3~q\ & ( (!\audioout|word_count\(2) & (\audioout|word_count\(1) & (\audioout|state.a4~q\ & \audioout|word_count\(0)))) # (\audioout|word_count\(2) & (((\audioout|word_count\(1) & \audioout|word_count\(0))) # (\audioout|state.a4~q\))) ) ) 
-- ) # ( \audioout|state.d1~q\ & ( !\audioout|state.a3~q\ & ( (!\audioout|word_count\(1) & (\audioout|word_count\(2) & ((\audioout|word_count\(0)) # (\audioout|state.a4~q\)))) # (\audioout|word_count\(1) & ((!\audioout|word_count\(2)) # 
-- ((!\audioout|word_count\(0))))) ) ) ) # ( !\audioout|state.d1~q\ & ( !\audioout|state.a3~q\ & ( (\audioout|state.a4~q\ & (!\audioout|word_count\(2) $ (((!\audioout|word_count\(1)) # (!\audioout|word_count\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000110010101110110011000000011000101110101011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.a4~q\,
	datad => \audioout|ALT_INV_word_count\(0),
	datae => \audioout|ALT_INV_state.d1~q\,
	dataf => \audioout|ALT_INV_state.a3~q\,
	combout => \audioout|Selector30~5_combout\);

-- Location: LABCELL_X36_Y1_N33
\audioout|Selector30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~6_combout\ = ( \audioout|Selector30~3_combout\ & ( !\audioout|Selector30~5_combout\ & ( (\audioout|Selector30~4_combout\ & !\audioout|I2C_SCLK~0_combout\) ) ) ) # ( !\audioout|Selector30~3_combout\ & ( !\audioout|Selector30~5_combout\ 
-- & ( (\audioout|Selector30~4_combout\ & (!\audioout|I2C_SCLK~0_combout\ & ((!\audioout|word_count\(2)) # (\audioout|word_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~4_combout\,
	datab => \audioout|ALT_INV_I2C_SCLK~0_combout\,
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_word_count\(0),
	datae => \audioout|ALT_INV_Selector30~3_combout\,
	dataf => \audioout|ALT_INV_Selector30~5_combout\,
	combout => \audioout|Selector30~6_combout\);

-- Location: LABCELL_X36_Y1_N57
\audioout|Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~2_combout\ = ( \audioout|state.d3~q\ & ( (!\audioout|word_count\(0) & (\audioout|word_count\(1) & ((\audioout|state.a5~q\)))) # (\audioout|word_count\(0) & (((!\audioout|word_count\(2))))) ) ) # ( !\audioout|state.d3~q\ & ( 
-- (\audioout|word_count\(1) & (\audioout|state.a5~q\ & !\audioout|word_count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101110011000000010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.a5~q\,
	datad => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_state.d3~q\,
	combout => \audioout|Selector30~2_combout\);

-- Location: LABCELL_X36_Y1_N42
\audioout|Selector30~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~7_combout\ = ( \audioout|state.a5~q\ & ( ((\audioout|state.d4~q\) # (\audioout|state.d6~DUPLICATE_q\)) # (\audioout|word_count\(2)) ) ) # ( !\audioout|state.a5~q\ & ( (!\audioout|word_count\(2) & (((\audioout|state.d4~q\) # 
-- (\audioout|state.d6~DUPLICATE_q\)))) # (\audioout|word_count\(2) & (\audioout|state.d2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datab => \audioout|ALT_INV_state.d2~q\,
	datac => \audioout|ALT_INV_state.d6~DUPLICATE_q\,
	datad => \audioout|ALT_INV_state.d4~q\,
	dataf => \audioout|ALT_INV_state.a5~q\,
	combout => \audioout|Selector30~7_combout\);

-- Location: FF_X36_Y1_N32
\audioout|state.d7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d6~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d7~q\);

-- Location: LABCELL_X36_Y1_N45
\audioout|Selector30~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~8_combout\ = ( \audioout|state.a3~q\ & ( (!\audioout|word_count\(2)) # (\audioout|state.a6~q\) ) ) # ( !\audioout|state.a3~q\ & ( \audioout|state.a6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.a6~q\,
	dataf => \audioout|ALT_INV_state.a3~q\,
	combout => \audioout|Selector30~8_combout\);

-- Location: LABCELL_X36_Y1_N39
\audioout|Selector30~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~10_combout\ = ( !\audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (((\audioout|state.d7~q\ & ((\audioout|word_count\(3)) # (\audioout|word_count\(2))))) # (\audioout|Selector30~8_combout\))) # (\audioout|word_count\(1) & 
-- ((((\audioout|state.d7~q\))))) ) ) # ( \audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (((\audioout|state.d7~q\ & ((!\audioout|word_count\(2)) # (\audioout|word_count\(3))))) # (\audioout|Selector30~7_combout\))) # (\audioout|word_count\(1) & 
-- (((\audioout|word_count\(3) & ((\audioout|state.d7~q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001111111111111111011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datab => \audioout|ALT_INV_word_count\(3),
	datac => \audioout|ALT_INV_Selector30~7_combout\,
	datad => \audioout|ALT_INV_word_count\(1),
	datae => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_state.d7~q\,
	datag => \audioout|ALT_INV_Selector30~8_combout\,
	combout => \audioout|Selector30~10_combout\);

-- Location: LABCELL_X36_Y1_N54
\audioout|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~1_combout\ = ( \audioout|state.d5~q\ & ( (!\audioout|word_count\(2) & (!\audioout|word_count\(1) $ (!\audioout|word_count\(0)))) ) ) # ( !\audioout|state.d5~q\ & ( (!\audioout|word_count\(2) & (\audioout|state.a7~q\ & 
-- (!\audioout|word_count\(1) $ (!\audioout|word_count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.a7~q\,
	datad => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_state.d5~q\,
	combout => \audioout|Selector30~1_combout\);

-- Location: LABCELL_X35_Y3_N15
\audioout|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~0_combout\ = ( \audioout|word_count\(0) & ( \audioout|state.d2~q\ & ( (\audioout|word_count\(1) & (!\audioout|word_count\(2) & ((\audioout|state.d0~q\) # (\audioout|state.d3~q\)))) ) ) ) # ( !\audioout|word_count\(0) & ( 
-- \audioout|state.d2~q\ & ( (\audioout|word_count\(1) & !\audioout|word_count\(2)) ) ) ) # ( \audioout|word_count\(0) & ( !\audioout|state.d2~q\ & ( (\audioout|word_count\(1) & (!\audioout|word_count\(2) & ((\audioout|state.d0~q\) # 
-- (\audioout|state.d3~q\)))) ) ) ) # ( !\audioout|word_count\(0) & ( !\audioout|state.d2~q\ & ( (\audioout|word_count\(1) & (!\audioout|word_count\(2) & ((\audioout|state.d0~q\) # (\audioout|state.d3~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000000110000001100000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d3~q\,
	datab => \audioout|ALT_INV_word_count\(1),
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_state.d0~q\,
	datae => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_state.d2~q\,
	combout => \audioout|Selector30~0_combout\);

-- Location: LABCELL_X36_Y1_N15
\audioout|Selector30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~9_combout\ = ( \audioout|Selector30~0_combout\ ) # ( !\audioout|Selector30~0_combout\ & ( (!\audioout|Selector30~6_combout\) # (((\audioout|Selector30~1_combout\) # (\audioout|Selector30~10_combout\)) # 
-- (\audioout|Selector30~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~6_combout\,
	datab => \audioout|ALT_INV_Selector30~2_combout\,
	datac => \audioout|ALT_INV_Selector30~10_combout\,
	datad => \audioout|ALT_INV_Selector30~1_combout\,
	datae => \audioout|ALT_INV_Selector30~0_combout\,
	combout => \audioout|Selector30~9_combout\);

-- Location: LABCELL_X37_Y3_N39
\audioout|WideOr32\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|WideOr32~combout\ = ( !\audioout|state.a_ack~q\ & ( !\audioout|state.b_ack~q\ & ( !\audioout|state.d_ack~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d_ack~q\,
	datae => \audioout|ALT_INV_state.a_ack~q\,
	dataf => \audioout|ALT_INV_state.b_ack~q\,
	combout => \audioout|WideOr32~combout\);

-- Location: FF_X37_Y2_N50
\meinclock|s_counter_bit[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_bit[0]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_bit[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N57
\meinclock|s_bit_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_bit_clk~0_combout\ = ( \meinclock|s_bit_clk~q\ & ( !\meinclock|s_counter_bit[0]~DUPLICATE_q\ ) ) # ( !\meinclock|s_bit_clk~q\ & ( \meinclock|s_counter_bit[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\,
	dataf => \meinclock|ALT_INV_s_bit_clk~q\,
	combout => \meinclock|s_bit_clk~0_combout\);

-- Location: FF_X37_Y2_N20
\meinclock|s_bit_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \meinclock|s_bit_clk~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_bit_clk~q\);

-- Location: LABCELL_X37_Y2_N39
\meinclock|v_lr_clk_enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|v_lr_clk_enable~0_combout\ = ( \meinclock|s_counter_bit[0]~DUPLICATE_q\ & ( \meinclock|s_bit_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \meinclock|ALT_INV_s_bit_clk~q\,
	dataf => \meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\,
	combout => \meinclock|v_lr_clk_enable~0_combout\);

-- Location: LABCELL_X37_Y2_N9
\meinclock|s_counter_lr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_lr[0]~4_combout\ = !\meinclock|s_counter_lr\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \meinclock|ALT_INV_s_counter_lr\(0),
	combout => \meinclock|s_counter_lr[0]~4_combout\);

-- Location: FF_X37_Y2_N11
\meinclock|s_counter_lr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_lr[0]~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \meinclock|v_lr_clk_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_lr\(0));

-- Location: LABCELL_X37_Y2_N3
\meinclock|s_counter_lr[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_lr[1]~3_combout\ = ( \meinclock|s_counter_lr\(1) & ( \meinclock|s_bit_clk~q\ & ( (!\meinclock|s_counter_lr\(0)) # (!\meinclock|s_counter_bit[0]~DUPLICATE_q\) ) ) ) # ( !\meinclock|s_counter_lr\(1) & ( \meinclock|s_bit_clk~q\ & ( 
-- (\meinclock|s_counter_lr\(0) & \meinclock|s_counter_bit[0]~DUPLICATE_q\) ) ) ) # ( \meinclock|s_counter_lr\(1) & ( !\meinclock|s_bit_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \meinclock|ALT_INV_s_counter_lr\(0),
	datad => \meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\,
	datae => \meinclock|ALT_INV_s_counter_lr\(1),
	dataf => \meinclock|ALT_INV_s_bit_clk~q\,
	combout => \meinclock|s_counter_lr[1]~3_combout\);

-- Location: FF_X37_Y2_N5
\meinclock|s_counter_lr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_lr[1]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_lr\(1));

-- Location: LABCELL_X37_Y2_N54
\meinclock|s_counter_lr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_lr[2]~2_combout\ = ( \meinclock|s_bit_clk~q\ & ( !\meinclock|s_counter_lr\(2) $ (((!\meinclock|s_counter_bit[0]~DUPLICATE_q\) # ((!\meinclock|s_counter_lr\(0)) # (!\meinclock|s_counter_lr\(1))))) ) ) # ( !\meinclock|s_bit_clk~q\ & ( 
-- \meinclock|s_counter_lr\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \meinclock|ALT_INV_s_counter_bit[0]~DUPLICATE_q\,
	datab => \meinclock|ALT_INV_s_counter_lr\(0),
	datac => \meinclock|ALT_INV_s_counter_lr\(1),
	datad => \meinclock|ALT_INV_s_counter_lr\(2),
	dataf => \meinclock|ALT_INV_s_bit_clk~q\,
	combout => \meinclock|s_counter_lr[2]~2_combout\);

-- Location: FF_X37_Y2_N56
\meinclock|s_counter_lr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_lr[2]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_lr\(2));

-- Location: LABCELL_X37_Y2_N42
\meinclock|s_counter_lr[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_lr[3]~1_combout\ = ( \meinclock|s_counter_lr\(3) & ( \meinclock|s_bit_clk~q\ & ( (!\meinclock|s_counter_lr\(1)) # ((!\meinclock|s_counter_lr\(0)) # ((!\meinclock|s_counter_lr\(2)) # (!\meinclock|s_counter_bit\(0)))) ) ) ) # ( 
-- !\meinclock|s_counter_lr\(3) & ( \meinclock|s_bit_clk~q\ & ( (\meinclock|s_counter_lr\(1) & (\meinclock|s_counter_lr\(0) & (\meinclock|s_counter_lr\(2) & \meinclock|s_counter_bit\(0)))) ) ) ) # ( \meinclock|s_counter_lr\(3) & ( !\meinclock|s_bit_clk~q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \meinclock|ALT_INV_s_counter_lr\(1),
	datab => \meinclock|ALT_INV_s_counter_lr\(0),
	datac => \meinclock|ALT_INV_s_counter_lr\(2),
	datad => \meinclock|ALT_INV_s_counter_bit\(0),
	datae => \meinclock|ALT_INV_s_counter_lr\(3),
	dataf => \meinclock|ALT_INV_s_bit_clk~q\,
	combout => \meinclock|s_counter_lr[3]~1_combout\);

-- Location: FF_X37_Y2_N44
\meinclock|s_counter_lr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_lr[3]~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_lr\(3));

-- Location: LABCELL_X37_Y2_N30
\meinclock|s_counter_lr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_counter_lr~0_combout\ = ( \meinclock|s_counter_lr\(4) & ( (!\meinclock|s_counter_lr\(1)) # ((!\meinclock|s_counter_lr\(0)) # ((!\meinclock|s_counter_lr\(2)) # (!\meinclock|s_counter_lr\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \meinclock|ALT_INV_s_counter_lr\(1),
	datab => \meinclock|ALT_INV_s_counter_lr\(0),
	datac => \meinclock|ALT_INV_s_counter_lr\(2),
	datad => \meinclock|ALT_INV_s_counter_lr\(3),
	datae => \meinclock|ALT_INV_s_counter_lr\(4),
	combout => \meinclock|s_counter_lr~0_combout\);

-- Location: FF_X37_Y2_N32
\meinclock|s_counter_lr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \meinclock|s_counter_lr~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \meinclock|v_lr_clk_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_counter_lr\(4));

-- Location: LABCELL_X37_Y2_N12
\meinclock|s_lr_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_lr_clk~0_combout\ = ( !\meinclock|s_counter_lr\(3) & ( (!\meinclock|s_counter_lr\(4) & (!\meinclock|s_counter_lr\(2) & !\meinclock|s_counter_lr\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \meinclock|ALT_INV_s_counter_lr\(4),
	datac => \meinclock|ALT_INV_s_counter_lr\(2),
	datad => \meinclock|ALT_INV_s_counter_lr\(1),
	dataf => \meinclock|ALT_INV_s_counter_lr\(3),
	combout => \meinclock|s_lr_clk~0_combout\);

-- Location: LABCELL_X37_Y2_N21
\meinclock|s_lr_clk~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_lr_clk~1_combout\ = ( \meinclock|s_lr_clk~0_combout\ & ( \meinclock|s_lr_clk~q\ & ( (!\meinclock|v_lr_clk_enable~0_combout\) # (\meinclock|s_counter_lr\(0)) ) ) ) # ( !\meinclock|s_lr_clk~0_combout\ & ( \meinclock|s_lr_clk~q\ ) ) # ( 
-- \meinclock|s_lr_clk~0_combout\ & ( !\meinclock|s_lr_clk~q\ & ( (\meinclock|v_lr_clk_enable~0_combout\ & !\meinclock|s_counter_lr\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011111111111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \meinclock|ALT_INV_v_lr_clk_enable~0_combout\,
	datac => \meinclock|ALT_INV_s_counter_lr\(0),
	datae => \meinclock|ALT_INV_s_lr_clk~0_combout\,
	dataf => \meinclock|ALT_INV_s_lr_clk~q\,
	combout => \meinclock|s_lr_clk~1_combout\);

-- Location: LABCELL_X37_Y2_N24
\meinclock|s_lr_clk~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \meinclock|s_lr_clk~feeder_combout\ = \meinclock|s_lr_clk~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \meinclock|ALT_INV_s_lr_clk~1_combout\,
	combout => \meinclock|s_lr_clk~feeder_combout\);

-- Location: FF_X37_Y2_N26
\meinclock|s_lr_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \meinclock|s_lr_clk~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \meinclock|s_lr_clk~q\);

-- Location: LABCELL_X37_Y2_N6
\tootherdac|LR_CLK_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|LR_CLK_OUT~0_combout\ = ( !\meinclock|s_lr_clk~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	dataf => \meinclock|ALT_INV_s_lr_clk~q\,
	combout => \tootherdac|LR_CLK_OUT~0_combout\);

-- Location: LABCELL_X37_Y2_N15
\tootherdac|BIT_CLK_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|BIT_CLK_OUT~0_combout\ = ( \meinclock|s_bit_clk~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \meinclock|ALT_INV_s_bit_clk~q\,
	combout => \tootherdac|BIT_CLK_OUT~0_combout\);

-- Location: LABCELL_X37_Y3_N51
\tootherdac|s_current_lr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|s_current_lr~0_combout\ = !\meinclock|s_lr_clk~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \meinclock|ALT_INV_s_lr_clk~q\,
	combout => \tootherdac|s_current_lr~0_combout\);

-- Location: FF_X37_Y3_N53
\tootherdac|s_current_lr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	d => \tootherdac|s_current_lr~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|s_current_lr~q\);

-- Location: LABCELL_X35_Y3_N36
\tootherdac|counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|counter[1]~2_combout\ = ( \tootherdac|counter\(1) & ( \tootherdac|counter\(0) & ( (\tootherdac|counter\(2) & (\tootherdac|counter\(3) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\)))) ) ) ) # ( !\tootherdac|counter\(1) & ( 
-- \tootherdac|counter\(0) & ( !\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\) ) ) ) # ( \tootherdac|counter\(1) & ( !\tootherdac|counter\(0) & ( !\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111100110000110011110011000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(2),
	datab => \meinclock|ALT_INV_s_lr_clk~q\,
	datac => \tootherdac|ALT_INV_counter\(3),
	datad => \tootherdac|ALT_INV_s_current_lr~q\,
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_counter\(0),
	combout => \tootherdac|counter[1]~2_combout\);

-- Location: FF_X34_Y3_N8
\tootherdac|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	asdata => \tootherdac|counter[1]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|counter\(1));

-- Location: MLABCELL_X34_Y3_N9
\tootherdac|counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|counter[2]~1_combout\ = ( \tootherdac|counter\(0) & ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & (!\meinclock|s_lr_clk~q\ $ ((!\tootherdac|s_current_lr~q\)))) # (\tootherdac|counter\(2) & (\tootherdac|counter\(3) & 
-- (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\)))) ) ) ) # ( !\tootherdac|counter\(0) & ( \tootherdac|counter\(1) & ( (\tootherdac|counter\(2) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( \tootherdac|counter\(0) & ( 
-- !\tootherdac|counter\(1) & ( (\tootherdac|counter\(2) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( !\tootherdac|counter\(0) & ( !\tootherdac|counter\(1) & ( (\tootherdac|counter\(2) & (!\meinclock|s_lr_clk~q\ $ 
-- (!\tootherdac|s_current_lr~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000010100000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(2),
	datab => \meinclock|ALT_INV_s_lr_clk~q\,
	datac => \tootherdac|ALT_INV_s_current_lr~q\,
	datad => \tootherdac|ALT_INV_counter\(3),
	datae => \tootherdac|ALT_INV_counter\(0),
	dataf => \tootherdac|ALT_INV_counter\(1),
	combout => \tootherdac|counter[2]~1_combout\);

-- Location: FF_X34_Y3_N56
\tootherdac|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	asdata => \tootherdac|counter[2]~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|counter\(2));

-- Location: MLABCELL_X34_Y3_N57
\tootherdac|counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|counter[0]~3_combout\ = ( \tootherdac|counter\(2) & ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\meinclock|s_lr_clk~q\ $ ((!\tootherdac|s_current_lr~q\)))) # (\tootherdac|counter\(0) & (\tootherdac|counter\(3) & 
-- (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\)))) ) ) ) # ( !\tootherdac|counter\(2) & ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( \tootherdac|counter\(2) & ( 
-- !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( !\tootherdac|counter\(2) & ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\meinclock|s_lr_clk~q\ $ 
-- (!\tootherdac|s_current_lr~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(0),
	datab => \meinclock|ALT_INV_s_lr_clk~q\,
	datac => \tootherdac|ALT_INV_s_current_lr~q\,
	datad => \tootherdac|ALT_INV_counter\(3),
	datae => \tootherdac|ALT_INV_counter\(2),
	dataf => \tootherdac|ALT_INV_counter\(1),
	combout => \tootherdac|counter[0]~3_combout\);

-- Location: FF_X34_Y3_N23
\tootherdac|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	asdata => \tootherdac|counter[0]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|counter\(0));

-- Location: MLABCELL_X34_Y3_N42
\tootherdac|counter[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|counter[3]~0_combout\ = ( \tootherdac|counter\(2) & ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(3) & (\tootherdac|counter\(0) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\)))) # (\tootherdac|counter\(3) & 
-- (!\meinclock|s_lr_clk~q\ $ (((!\tootherdac|s_current_lr~q\))))) ) ) ) # ( !\tootherdac|counter\(2) & ( \tootherdac|counter\(1) & ( (\tootherdac|counter\(3) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( \tootherdac|counter\(2) & ( 
-- !\tootherdac|counter\(1) & ( (\tootherdac|counter\(3) & (!\meinclock|s_lr_clk~q\ $ (!\tootherdac|s_current_lr~q\))) ) ) ) # ( !\tootherdac|counter\(2) & ( !\tootherdac|counter\(1) & ( (\tootherdac|counter\(3) & (!\meinclock|s_lr_clk~q\ $ 
-- (!\tootherdac|s_current_lr~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001010001000001001101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(3),
	datab => \meinclock|ALT_INV_s_lr_clk~q\,
	datac => \tootherdac|ALT_INV_counter\(0),
	datad => \tootherdac|ALT_INV_s_current_lr~q\,
	datae => \tootherdac|ALT_INV_counter\(2),
	dataf => \tootherdac|ALT_INV_counter\(1),
	combout => \tootherdac|counter[3]~0_combout\);

-- Location: FF_X34_Y3_N26
\tootherdac|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	asdata => \tootherdac|counter[3]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|counter\(3));

-- Location: MLABCELL_X34_Y3_N21
\tootherdac|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|DOUT~0_combout\ = ( \tootherdac|counter\(2) & ( (\tootherdac|counter\(1) & \tootherdac|counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tootherdac|ALT_INV_counter\(1),
	datad => \tootherdac|ALT_INV_counter\(0),
	dataf => \tootherdac|ALT_INV_counter\(2),
	combout => \tootherdac|DOUT~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\SCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G4
\SCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~input_o\,
	outclk => \SCLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X62_Y0_N1
\SDATA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDATA,
	o => \SDATA~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\CS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS,
	o => \CS~input_o\);

-- Location: FF_X35_Y2_N5
\spi|SDATA_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \SDATA~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(0));

-- Location: LABCELL_X33_Y2_N57
\spi|BYTE0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(0) = (\reset~input_o\ & ((!\CS~input_o\ & ((\spi|BYTE0\(0)))) # (\CS~input_o\ & (\spi|SDATA_register\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011000001010000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datab => \spi|ALT_INV_BYTE0\(0),
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	combout => \spi|BYTE0\(0));

-- Location: LABCELL_X33_Y2_N54
\volume|scaled_vol[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[0]~1_combout\ = ( \spi|BYTE0\(0) & ( (!\reset~input_o\) # (\volume|scaled_vol[0]~1_combout\) ) ) # ( !\spi|BYTE0\(0) & ( (\volume|scaled_vol[0]~1_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[0]~1_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(0),
	combout => \volume|scaled_vol[0]~1_combout\);

-- Location: MLABCELL_X34_Y1_N0
\volume|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~41_sumout\ = SUM(( \volume|clk_count\(0) ) + ( VCC ) + ( !VCC ))
-- \volume|Add0~42\ = CARRY(( \volume|clk_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(0),
	cin => GND,
	sumout => \volume|Add0~41_sumout\,
	cout => \volume|Add0~42\);

-- Location: FF_X34_Y1_N1
\volume|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~41_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(0));

-- Location: MLABCELL_X34_Y1_N3
\volume|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~45_sumout\ = SUM(( \volume|clk_count\(1) ) + ( GND ) + ( \volume|Add0~42\ ))
-- \volume|Add0~46\ = CARRY(( \volume|clk_count\(1) ) + ( GND ) + ( \volume|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(1),
	cin => \volume|Add0~42\,
	sumout => \volume|Add0~45_sumout\,
	cout => \volume|Add0~46\);

-- Location: FF_X34_Y1_N4
\volume|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~45_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(1));

-- Location: MLABCELL_X34_Y1_N6
\volume|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~49_sumout\ = SUM(( \volume|clk_count\(2) ) + ( GND ) + ( \volume|Add0~46\ ))
-- \volume|Add0~50\ = CARRY(( \volume|clk_count\(2) ) + ( GND ) + ( \volume|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(2),
	cin => \volume|Add0~46\,
	sumout => \volume|Add0~49_sumout\,
	cout => \volume|Add0~50\);

-- Location: FF_X34_Y1_N7
\volume|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~49_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(2));

-- Location: MLABCELL_X34_Y1_N9
\volume|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~53_sumout\ = SUM(( \volume|clk_count\(3) ) + ( GND ) + ( \volume|Add0~50\ ))
-- \volume|Add0~54\ = CARRY(( \volume|clk_count\(3) ) + ( GND ) + ( \volume|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(3),
	cin => \volume|Add0~50\,
	sumout => \volume|Add0~53_sumout\,
	cout => \volume|Add0~54\);

-- Location: FF_X34_Y1_N10
\volume|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~53_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(3));

-- Location: MLABCELL_X34_Y1_N12
\volume|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~57_sumout\ = SUM(( \volume|clk_count\(4) ) + ( GND ) + ( \volume|Add0~54\ ))
-- \volume|Add0~58\ = CARRY(( \volume|clk_count\(4) ) + ( GND ) + ( \volume|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(4),
	cin => \volume|Add0~54\,
	sumout => \volume|Add0~57_sumout\,
	cout => \volume|Add0~58\);

-- Location: FF_X34_Y1_N14
\volume|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~57_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(4));

-- Location: MLABCELL_X34_Y1_N15
\volume|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~61_sumout\ = SUM(( \volume|clk_count\(5) ) + ( GND ) + ( \volume|Add0~58\ ))
-- \volume|Add0~62\ = CARRY(( \volume|clk_count\(5) ) + ( GND ) + ( \volume|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(5),
	cin => \volume|Add0~58\,
	sumout => \volume|Add0~61_sumout\,
	cout => \volume|Add0~62\);

-- Location: FF_X34_Y1_N17
\volume|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~61_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(5));

-- Location: MLABCELL_X34_Y1_N18
\volume|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~69_sumout\ = SUM(( \volume|clk_count\(6) ) + ( GND ) + ( \volume|Add0~62\ ))
-- \volume|Add0~70\ = CARRY(( \volume|clk_count\(6) ) + ( GND ) + ( \volume|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(6),
	cin => \volume|Add0~62\,
	sumout => \volume|Add0~69_sumout\,
	cout => \volume|Add0~70\);

-- Location: FF_X34_Y1_N20
\volume|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~69_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(6));

-- Location: MLABCELL_X34_Y1_N21
\volume|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~73_sumout\ = SUM(( \volume|clk_count\(7) ) + ( GND ) + ( \volume|Add0~70\ ))
-- \volume|Add0~74\ = CARRY(( \volume|clk_count\(7) ) + ( GND ) + ( \volume|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(7),
	cin => \volume|Add0~70\,
	sumout => \volume|Add0~73_sumout\,
	cout => \volume|Add0~74\);

-- Location: FF_X34_Y1_N23
\volume|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~73_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(7));

-- Location: MLABCELL_X34_Y1_N24
\volume|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~77_sumout\ = SUM(( \volume|clk_count\(8) ) + ( GND ) + ( \volume|Add0~74\ ))
-- \volume|Add0~78\ = CARRY(( \volume|clk_count\(8) ) + ( GND ) + ( \volume|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(8),
	cin => \volume|Add0~74\,
	sumout => \volume|Add0~77_sumout\,
	cout => \volume|Add0~78\);

-- Location: FF_X34_Y1_N26
\volume|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~77_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(8));

-- Location: MLABCELL_X34_Y1_N27
\volume|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~9_sumout\ = SUM(( \volume|clk_count\(9) ) + ( GND ) + ( \volume|Add0~78\ ))
-- \volume|Add0~10\ = CARRY(( \volume|clk_count\(9) ) + ( GND ) + ( \volume|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(9),
	cin => \volume|Add0~78\,
	sumout => \volume|Add0~9_sumout\,
	cout => \volume|Add0~10\);

-- Location: FF_X34_Y1_N28
\volume|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~9_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(9));

-- Location: MLABCELL_X34_Y1_N30
\volume|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~13_sumout\ = SUM(( \volume|clk_count\(10) ) + ( GND ) + ( \volume|Add0~10\ ))
-- \volume|Add0~14\ = CARRY(( \volume|clk_count\(10) ) + ( GND ) + ( \volume|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(10),
	cin => \volume|Add0~10\,
	sumout => \volume|Add0~13_sumout\,
	cout => \volume|Add0~14\);

-- Location: FF_X34_Y1_N31
\volume|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~13_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(10));

-- Location: MLABCELL_X34_Y1_N33
\volume|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~65_sumout\ = SUM(( \volume|clk_count\(11) ) + ( GND ) + ( \volume|Add0~14\ ))
-- \volume|Add0~66\ = CARRY(( \volume|clk_count\(11) ) + ( GND ) + ( \volume|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(11),
	cin => \volume|Add0~14\,
	sumout => \volume|Add0~65_sumout\,
	cout => \volume|Add0~66\);

-- Location: FF_X34_Y1_N35
\volume|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~65_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(11));

-- Location: MLABCELL_X34_Y1_N36
\volume|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~17_sumout\ = SUM(( \volume|clk_count\(12) ) + ( GND ) + ( \volume|Add0~66\ ))
-- \volume|Add0~18\ = CARRY(( \volume|clk_count\(12) ) + ( GND ) + ( \volume|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(12),
	cin => \volume|Add0~66\,
	sumout => \volume|Add0~17_sumout\,
	cout => \volume|Add0~18\);

-- Location: FF_X34_Y1_N37
\volume|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~17_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(12));

-- Location: MLABCELL_X34_Y1_N39
\volume|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~37_sumout\ = SUM(( \volume|clk_count\(13) ) + ( GND ) + ( \volume|Add0~18\ ))
-- \volume|Add0~38\ = CARRY(( \volume|clk_count\(13) ) + ( GND ) + ( \volume|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(13),
	cin => \volume|Add0~18\,
	sumout => \volume|Add0~37_sumout\,
	cout => \volume|Add0~38\);

-- Location: FF_X34_Y1_N40
\volume|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~37_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(13));

-- Location: MLABCELL_X34_Y1_N42
\volume|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~33_sumout\ = SUM(( \volume|clk_count\(14) ) + ( GND ) + ( \volume|Add0~38\ ))
-- \volume|Add0~34\ = CARRY(( \volume|clk_count\(14) ) + ( GND ) + ( \volume|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(14),
	cin => \volume|Add0~38\,
	sumout => \volume|Add0~33_sumout\,
	cout => \volume|Add0~34\);

-- Location: FF_X34_Y1_N43
\volume|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~33_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(14));

-- Location: MLABCELL_X34_Y1_N45
\volume|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~21_sumout\ = SUM(( \volume|clk_count\(15) ) + ( GND ) + ( \volume|Add0~34\ ))
-- \volume|Add0~22\ = CARRY(( \volume|clk_count\(15) ) + ( GND ) + ( \volume|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(15),
	cin => \volume|Add0~34\,
	sumout => \volume|Add0~21_sumout\,
	cout => \volume|Add0~22\);

-- Location: FF_X34_Y1_N46
\volume|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~21_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(15));

-- Location: MLABCELL_X34_Y1_N48
\volume|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~25_sumout\ = SUM(( \volume|clk_count\(16) ) + ( GND ) + ( \volume|Add0~22\ ))
-- \volume|Add0~26\ = CARRY(( \volume|clk_count\(16) ) + ( GND ) + ( \volume|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(16),
	cin => \volume|Add0~22\,
	sumout => \volume|Add0~25_sumout\,
	cout => \volume|Add0~26\);

-- Location: FF_X34_Y1_N49
\volume|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~25_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(16));

-- Location: MLABCELL_X34_Y1_N51
\volume|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~29_sumout\ = SUM(( \volume|clk_count\(17) ) + ( GND ) + ( \volume|Add0~26\ ))
-- \volume|Add0~30\ = CARRY(( \volume|clk_count\(17) ) + ( GND ) + ( \volume|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(17),
	cin => \volume|Add0~26\,
	sumout => \volume|Add0~29_sumout\,
	cout => \volume|Add0~30\);

-- Location: FF_X34_Y1_N52
\volume|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~29_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(17));

-- Location: LABCELL_X35_Y1_N45
\volume|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Equal0~1_combout\ = ( \volume|clk_count\(9) & ( \volume|clk_count\(17) & ( (!\volume|clk_count\(10) & (!\volume|clk_count\(12) & (\volume|clk_count\(16) & !\volume|clk_count\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_clk_count\(10),
	datab => \volume|ALT_INV_clk_count\(12),
	datac => \volume|ALT_INV_clk_count\(16),
	datad => \volume|ALT_INV_clk_count\(15),
	datae => \volume|ALT_INV_clk_count\(9),
	dataf => \volume|ALT_INV_clk_count\(17),
	combout => \volume|Equal0~1_combout\);

-- Location: LABCELL_X33_Y1_N18
\volume|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Equal0~3_combout\ = ( !\volume|clk_count\(7) & ( \volume|clk_count\(4) & ( (\volume|clk_count\(5) & (!\volume|clk_count\(8) & (!\volume|clk_count\(11) & !\volume|clk_count\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_clk_count\(5),
	datab => \volume|ALT_INV_clk_count\(8),
	datac => \volume|ALT_INV_clk_count\(11),
	datad => \volume|ALT_INV_clk_count\(6),
	datae => \volume|ALT_INV_clk_count\(7),
	dataf => \volume|ALT_INV_clk_count\(4),
	combout => \volume|Equal0~3_combout\);

-- Location: MLABCELL_X34_Y1_N54
\volume|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~1_sumout\ = SUM(( \volume|clk_count\(18) ) + ( GND ) + ( \volume|Add0~30\ ))
-- \volume|Add0~2\ = CARRY(( \volume|clk_count\(18) ) + ( GND ) + ( \volume|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(18),
	cin => \volume|Add0~30\,
	sumout => \volume|Add0~1_sumout\,
	cout => \volume|Add0~2\);

-- Location: FF_X34_Y1_N56
\volume|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~1_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(18));

-- Location: MLABCELL_X34_Y1_N57
\volume|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add0~5_sumout\ = SUM(( \volume|clk_count\(19) ) + ( GND ) + ( \volume|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_clk_count\(19),
	cin => \volume|Add0~2\,
	sumout => \volume|Add0~5_sumout\);

-- Location: FF_X34_Y1_N58
\volume|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|Add0~5_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|clk_count\(19));

-- Location: LABCELL_X33_Y1_N36
\volume|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Equal0~0_combout\ = ( \volume|clk_count\(18) & ( \volume|clk_count\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_clk_count\(19),
	datae => \volume|ALT_INV_clk_count\(18),
	combout => \volume|Equal0~0_combout\);

-- Location: LABCELL_X35_Y1_N57
\volume|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Equal0~2_combout\ = ( \volume|clk_count\(14) & ( \volume|clk_count\(0) & ( (!\volume|clk_count\(13) & (\volume|clk_count\(3) & (\volume|clk_count\(1) & \volume|clk_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_clk_count\(13),
	datab => \volume|ALT_INV_clk_count\(3),
	datac => \volume|ALT_INV_clk_count\(1),
	datad => \volume|ALT_INV_clk_count\(2),
	datae => \volume|ALT_INV_clk_count\(14),
	dataf => \volume|ALT_INV_clk_count\(0),
	combout => \volume|Equal0~2_combout\);

-- Location: LABCELL_X31_Y2_N51
\volume|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Equal0~4_combout\ = ( \volume|Equal0~2_combout\ & ( (\volume|Equal0~1_combout\ & (\volume|Equal0~3_combout\ & \volume|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_Equal0~1_combout\,
	datac => \volume|ALT_INV_Equal0~3_combout\,
	datad => \volume|ALT_INV_Equal0~0_combout\,
	dataf => \volume|ALT_INV_Equal0~2_combout\,
	combout => \volume|Equal0~4_combout\);

-- Location: LABCELL_X31_Y2_N6
\volume|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|count~2_combout\ = (\volume|count\(0) & !\volume|count\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_count\(0),
	datad => \volume|ALT_INV_count\(1),
	combout => \volume|count~2_combout\);

-- Location: IOIBUF_X12_Y0_N18
\switch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: LABCELL_X31_Y2_N3
\volume|spoken~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|spoken~0_combout\ = ( \volume|spoken~q\ & ( \switch~input_o\ ) ) # ( !\volume|spoken~q\ & ( \switch~input_o\ ) ) # ( \volume|spoken~q\ & ( !\switch~input_o\ & ( ((!\volume|count\(1)) # (\volume|scalar\(7))) # (\volume|count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_count\(0),
	datab => \volume|ALT_INV_count\(1),
	datac => \volume|ALT_INV_scalar\(7),
	datae => \volume|ALT_INV_spoken~q\,
	dataf => \ALT_INV_switch~input_o\,
	combout => \volume|spoken~0_combout\);

-- Location: FF_X31_Y2_N5
\volume|spoken\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|spoken~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|spoken~q\);

-- Location: LABCELL_X31_Y2_N30
\volume|count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|count[0]~1_combout\ = ( \reset~input_o\ & ( (\volume|spoken~q\ & (!\switch~input_o\ & \volume|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_spoken~q\,
	datab => \ALT_INV_switch~input_o\,
	datad => \volume|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \volume|count[0]~1_combout\);

-- Location: FF_X31_Y2_N8
\volume|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|count~2_combout\,
	ena => \volume|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|count\(1));

-- Location: LABCELL_X31_Y2_N33
\volume|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|count~0_combout\ = (!\volume|count\(1) & !\volume|count\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_count\(1),
	datad => \volume|ALT_INV_count\(0),
	combout => \volume|count~0_combout\);

-- Location: FF_X31_Y2_N35
\volume|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|count~0_combout\,
	ena => \volume|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|count\(0));

-- Location: LABCELL_X31_Y2_N9
\volume|scalar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~0_combout\ = (!\volume|count\(0) & (\volume|count\(1) & \volume|spoken~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_count\(0),
	datac => \volume|ALT_INV_count\(1),
	datad => \volume|ALT_INV_spoken~q\,
	combout => \volume|scalar~0_combout\);

-- Location: MLABCELL_X34_Y2_N30
\volume|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~1_sumout\ = SUM(( \volume|scalar\(1) ) + ( VCC ) + ( !VCC ))
-- \volume|Add1~2\ = CARRY(( \volume|scalar\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(1),
	cin => GND,
	sumout => \volume|Add1~1_sumout\,
	cout => \volume|Add1~2\);

-- Location: MLABCELL_X34_Y2_N33
\volume|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~5_sumout\ = SUM(( \volume|scalar\(2) ) + ( VCC ) + ( \volume|Add1~2\ ))
-- \volume|Add1~6\ = CARRY(( \volume|scalar\(2) ) + ( VCC ) + ( \volume|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(2),
	cin => \volume|Add1~2\,
	sumout => \volume|Add1~5_sumout\,
	cout => \volume|Add1~6\);

-- Location: MLABCELL_X34_Y2_N0
\volume|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~1_sumout\ = SUM(( \volume|scalar\(0) ) + ( VCC ) + ( !VCC ))
-- \volume|Add2~2\ = CARRY(( \volume|scalar\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scalar\(0),
	cin => GND,
	sumout => \volume|Add2~1_sumout\,
	cout => \volume|Add2~2\);

-- Location: MLABCELL_X34_Y2_N3
\volume|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~5_sumout\ = SUM(( \volume|scalar\(1) ) + ( GND ) + ( \volume|Add2~2\ ))
-- \volume|Add2~6\ = CARRY(( \volume|scalar\(1) ) + ( GND ) + ( \volume|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(1),
	cin => \volume|Add2~2\,
	sumout => \volume|Add2~5_sumout\,
	cout => \volume|Add2~6\);

-- Location: MLABCELL_X34_Y2_N6
\volume|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~9_sumout\ = SUM(( \volume|scalar\(2) ) + ( GND ) + ( \volume|Add2~6\ ))
-- \volume|Add2~10\ = CARRY(( \volume|scalar\(2) ) + ( GND ) + ( \volume|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(2),
	cin => \volume|Add2~6\,
	sumout => \volume|Add2~9_sumout\,
	cout => \volume|Add2~10\);

-- Location: MLABCELL_X34_Y2_N27
\volume|scalar~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~3_combout\ = ( \volume|Add1~5_sumout\ & ( \volume|Add2~9_sumout\ & ( (!\switch~input_o\ & (((\volume|scalar\(7))))) # (\switch~input_o\ & (((!\volume|LessThan0~0_combout\)) # (\volume|LessThan0~1_combout\))) ) ) ) # ( 
-- !\volume|Add1~5_sumout\ & ( \volume|Add2~9_sumout\ & ( (\volume|scalar\(7) & !\switch~input_o\) ) ) ) # ( \volume|Add1~5_sumout\ & ( !\volume|Add2~9_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101110100001111000000000000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_LessThan0~1_combout\,
	datab => \volume|ALT_INV_LessThan0~0_combout\,
	datac => \volume|ALT_INV_scalar\(7),
	datad => \ALT_INV_switch~input_o\,
	datae => \volume|ALT_INV_Add1~5_sumout\,
	dataf => \volume|ALT_INV_Add2~9_sumout\,
	combout => \volume|scalar~3_combout\);

-- Location: LABCELL_X31_Y2_N24
\volume|scalar[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar[1]~2_combout\ = ( \volume|Equal0~1_combout\ & ( \volume|Equal0~2_combout\ & ( (\volume|Equal0~3_combout\ & (\volume|Equal0~0_combout\ & ((\volume|scalar~0_combout\) # (\switch~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_Equal0~3_combout\,
	datab => \volume|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_switch~input_o\,
	datad => \volume|ALT_INV_scalar~0_combout\,
	datae => \volume|ALT_INV_Equal0~1_combout\,
	dataf => \volume|ALT_INV_Equal0~2_combout\,
	combout => \volume|scalar[1]~2_combout\);

-- Location: FF_X34_Y2_N29
\volume|scalar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(2));

-- Location: MLABCELL_X34_Y2_N36
\volume|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~9_sumout\ = SUM(( \volume|scalar\(3) ) + ( VCC ) + ( \volume|Add1~6\ ))
-- \volume|Add1~10\ = CARRY(( \volume|scalar\(3) ) + ( VCC ) + ( \volume|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(3),
	cin => \volume|Add1~6\,
	sumout => \volume|Add1~9_sumout\,
	cout => \volume|Add1~10\);

-- Location: MLABCELL_X34_Y2_N9
\volume|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~13_sumout\ = SUM(( \volume|scalar\(3) ) + ( GND ) + ( \volume|Add2~10\ ))
-- \volume|Add2~14\ = CARRY(( \volume|scalar\(3) ) + ( GND ) + ( \volume|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(3),
	cin => \volume|Add2~10\,
	sumout => \volume|Add2~13_sumout\,
	cout => \volume|Add2~14\);

-- Location: MLABCELL_X34_Y2_N24
\volume|scalar~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~4_combout\ = ( \volume|Add1~9_sumout\ & ( \volume|Add2~13_sumout\ & ( (!\switch~input_o\ & (((\volume|scalar\(7))))) # (\switch~input_o\ & (((!\volume|LessThan0~0_combout\)) # (\volume|LessThan0~1_combout\))) ) ) ) # ( 
-- !\volume|Add1~9_sumout\ & ( \volume|Add2~13_sumout\ & ( (!\switch~input_o\ & \volume|scalar\(7)) ) ) ) # ( \volume|Add1~9_sumout\ & ( !\volume|Add2~13_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000111100000000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_LessThan0~1_combout\,
	datab => \volume|ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_switch~input_o\,
	datad => \volume|ALT_INV_scalar\(7),
	datae => \volume|ALT_INV_Add1~9_sumout\,
	dataf => \volume|ALT_INV_Add2~13_sumout\,
	combout => \volume|scalar~4_combout\);

-- Location: FF_X34_Y2_N26
\volume|scalar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(3));

-- Location: MLABCELL_X34_Y2_N39
\volume|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~13_sumout\ = SUM(( \volume|scalar\(4) ) + ( VCC ) + ( \volume|Add1~10\ ))
-- \volume|Add1~14\ = CARRY(( \volume|scalar\(4) ) + ( VCC ) + ( \volume|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(4),
	cin => \volume|Add1~10\,
	sumout => \volume|Add1~13_sumout\,
	cout => \volume|Add1~14\);

-- Location: MLABCELL_X34_Y2_N12
\volume|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~17_sumout\ = SUM(( \volume|scalar\(4) ) + ( GND ) + ( \volume|Add2~14\ ))
-- \volume|Add2~18\ = CARRY(( \volume|scalar\(4) ) + ( GND ) + ( \volume|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(4),
	cin => \volume|Add2~14\,
	sumout => \volume|Add2~17_sumout\,
	cout => \volume|Add2~18\);

-- Location: LABCELL_X35_Y2_N30
\volume|scalar~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~5_combout\ = ( \volume|Add1~13_sumout\ & ( \volume|Add2~17_sumout\ & ( (!\switch~input_o\ & (\volume|scalar\(7))) # (\switch~input_o\ & (((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\)))) ) ) ) # ( !\volume|Add1~13_sumout\ 
-- & ( \volume|Add2~17_sumout\ & ( (\volume|scalar\(7) & !\switch~input_o\) ) ) ) # ( \volume|Add1~13_sumout\ & ( !\volume|Add2~17_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111001101010101000000000101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(7),
	datab => \volume|ALT_INV_LessThan0~1_combout\,
	datac => \volume|ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_switch~input_o\,
	datae => \volume|ALT_INV_Add1~13_sumout\,
	dataf => \volume|ALT_INV_Add2~17_sumout\,
	combout => \volume|scalar~5_combout\);

-- Location: FF_X35_Y2_N32
\volume|scalar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar~5_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(4));

-- Location: MLABCELL_X34_Y2_N15
\volume|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~21_sumout\ = SUM(( \volume|scalar\(5) ) + ( GND ) + ( \volume|Add2~18\ ))
-- \volume|Add2~22\ = CARRY(( \volume|scalar\(5) ) + ( GND ) + ( \volume|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(5),
	cin => \volume|Add2~18\,
	sumout => \volume|Add2~21_sumout\,
	cout => \volume|Add2~22\);

-- Location: MLABCELL_X34_Y2_N42
\volume|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~17_sumout\ = SUM(( \volume|scalar\(5) ) + ( VCC ) + ( \volume|Add1~14\ ))
-- \volume|Add1~18\ = CARRY(( \volume|scalar\(5) ) + ( VCC ) + ( \volume|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(5),
	cin => \volume|Add1~14\,
	sumout => \volume|Add1~17_sumout\,
	cout => \volume|Add1~18\);

-- Location: LABCELL_X33_Y2_N0
\volume|scalar~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~6_combout\ = ( \volume|Add1~17_sumout\ & ( \switch~input_o\ & ( (!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\) ) ) ) # ( \volume|Add1~17_sumout\ & ( !\switch~input_o\ & ( (\volume|Add2~21_sumout\ & \volume|scalar\(7)) ) ) 
-- ) # ( !\volume|Add1~17_sumout\ & ( !\switch~input_o\ & ( (\volume|Add2~21_sumout\ & \volume|scalar\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_Add2~21_sumout\,
	datab => \volume|ALT_INV_LessThan0~0_combout\,
	datac => \volume|ALT_INV_LessThan0~1_combout\,
	datad => \volume|ALT_INV_scalar\(7),
	datae => \volume|ALT_INV_Add1~17_sumout\,
	dataf => \ALT_INV_switch~input_o\,
	combout => \volume|scalar~6_combout\);

-- Location: FF_X34_Y2_N53
\volume|scalar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scalar~6_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(5));

-- Location: LABCELL_X35_Y2_N12
\volume|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|LessThan0~1_combout\ = ( \volume|scalar\(4) & ( \volume|scalar\(6) ) ) # ( !\volume|scalar\(4) & ( (\volume|scalar\(5) & \volume|scalar\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(5),
	datad => \volume|ALT_INV_scalar\(6),
	dataf => \volume|ALT_INV_scalar\(4),
	combout => \volume|LessThan0~1_combout\);

-- Location: MLABCELL_X34_Y2_N18
\volume|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~25_sumout\ = SUM(( \volume|scalar\(6) ) + ( GND ) + ( \volume|Add2~22\ ))
-- \volume|Add2~26\ = CARRY(( \volume|scalar\(6) ) + ( GND ) + ( \volume|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scalar\(6),
	cin => \volume|Add2~22\,
	sumout => \volume|Add2~25_sumout\,
	cout => \volume|Add2~26\);

-- Location: MLABCELL_X34_Y2_N45
\volume|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~21_sumout\ = SUM(( \volume|scalar\(6) ) + ( VCC ) + ( \volume|Add1~18\ ))
-- \volume|Add1~22\ = CARRY(( \volume|scalar\(6) ) + ( VCC ) + ( \volume|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(6),
	cin => \volume|Add1~18\,
	sumout => \volume|Add1~21_sumout\,
	cout => \volume|Add1~22\);

-- Location: LABCELL_X33_Y2_N18
\volume|scalar~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~7_combout\ = ( \volume|Add2~25_sumout\ & ( \volume|Add1~21_sumout\ & ( (\volume|scalar\(7)) # (\switch~input_o\) ) ) ) # ( !\volume|Add2~25_sumout\ & ( \volume|Add1~21_sumout\ & ( \switch~input_o\ ) ) ) # ( \volume|Add2~25_sumout\ & ( 
-- !\volume|Add1~21_sumout\ & ( (!\switch~input_o\ & (((\volume|scalar\(7))))) # (\switch~input_o\ & (\volume|LessThan0~0_combout\ & (!\volume|LessThan0~1_combout\))) ) ) ) # ( !\volume|Add2~25_sumout\ & ( !\volume|Add1~21_sumout\ & ( (\switch~input_o\ & 
-- (\volume|LessThan0~0_combout\ & !\volume|LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100001011101001010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~input_o\,
	datab => \volume|ALT_INV_LessThan0~0_combout\,
	datac => \volume|ALT_INV_LessThan0~1_combout\,
	datad => \volume|ALT_INV_scalar\(7),
	datae => \volume|ALT_INV_Add2~25_sumout\,
	dataf => \volume|ALT_INV_Add1~21_sumout\,
	combout => \volume|scalar~7_combout\);

-- Location: FF_X34_Y2_N59
\volume|scalar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scalar~7_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(6));

-- Location: MLABCELL_X34_Y2_N48
\volume|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add1~25_sumout\ = SUM(( !\volume|scalar\(7) ) + ( VCC ) + ( \volume|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scalar\(7),
	cin => \volume|Add1~22\,
	sumout => \volume|Add1~25_sumout\);

-- Location: MLABCELL_X34_Y2_N21
\volume|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|Add2~29_sumout\ = SUM(( !\volume|scalar\(7) ) + ( GND ) + ( \volume|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scalar\(7),
	cin => \volume|Add2~26\,
	sumout => \volume|Add2~29_sumout\);

-- Location: LABCELL_X31_Y2_N12
\volume|scalar~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~8_combout\ = ( \volume|scalar\(7) & ( \volume|Add2~29_sumout\ & ( (!\switch~input_o\ & (!\volume|scalar~0_combout\)) # (\switch~input_o\ & (((!\volume|LessThan0~2_combout\) # (!\volume|Add1~25_sumout\)))) ) ) ) # ( !\volume|scalar\(7) & ( 
-- \volume|Add2~29_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~2_combout\) # (!\volume|Add1~25_sumout\))) ) ) ) # ( \volume|scalar\(7) & ( !\volume|Add2~29_sumout\ & ( (!\switch~input_o\) # ((!\volume|LessThan0~2_combout\) # 
-- (!\volume|Add1~25_sumout\)) ) ) ) # ( !\volume|scalar\(7) & ( !\volume|Add2~29_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~2_combout\) # (!\volume|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000111111111111110000110011001100001011101110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar~0_combout\,
	datab => \ALT_INV_switch~input_o\,
	datac => \volume|ALT_INV_LessThan0~2_combout\,
	datad => \volume|ALT_INV_Add1~25_sumout\,
	datae => \volume|ALT_INV_scalar\(7),
	dataf => \volume|ALT_INV_Add2~29_sumout\,
	combout => \volume|scalar~8_combout\);

-- Location: FF_X31_Y2_N14
\volume|scalar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar~8_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(7));

-- Location: LABCELL_X35_Y2_N33
\volume|scalar~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar~1_combout\ = ( \volume|Add1~1_sumout\ & ( \volume|Add2~5_sumout\ & ( (!\switch~input_o\ & (\volume|scalar\(7))) # (\switch~input_o\ & (((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\)))) ) ) ) # ( !\volume|Add1~1_sumout\ & 
-- ( \volume|Add2~5_sumout\ & ( (\volume|scalar\(7) & !\switch~input_o\) ) ) ) # ( \volume|Add1~1_sumout\ & ( !\volume|Add2~5_sumout\ & ( (\switch~input_o\ & ((!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000001101010000010100000101111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(7),
	datab => \volume|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_switch~input_o\,
	datad => \volume|ALT_INV_LessThan0~0_combout\,
	datae => \volume|ALT_INV_Add1~1_sumout\,
	dataf => \volume|ALT_INV_Add2~5_sumout\,
	combout => \volume|scalar~1_combout\);

-- Location: FF_X35_Y2_N35
\volume|scalar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \volume|scalar[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(1));

-- Location: MLABCELL_X34_Y2_N54
\volume|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|LessThan0~0_combout\ = ( \volume|scalar\(2) & ( \volume|scalar\(0) & ( (!\volume|scalar\(6) & \volume|scalar\(7)) ) ) ) # ( !\volume|scalar\(2) & ( \volume|scalar\(0) & ( (!\volume|scalar\(6) & \volume|scalar\(7)) ) ) ) # ( \volume|scalar\(2) & ( 
-- !\volume|scalar\(0) & ( (!\volume|scalar\(6) & \volume|scalar\(7)) ) ) ) # ( !\volume|scalar\(2) & ( !\volume|scalar\(0) & ( (\volume|scalar\(7) & ((!\volume|scalar\(6)) # ((!\volume|scalar\(1) & !\volume|scalar\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(1),
	datab => \volume|ALT_INV_scalar\(3),
	datac => \volume|ALT_INV_scalar\(6),
	datad => \volume|ALT_INV_scalar\(7),
	datae => \volume|ALT_INV_scalar\(2),
	dataf => \volume|ALT_INV_scalar\(0),
	combout => \volume|LessThan0~0_combout\);

-- Location: LABCELL_X35_Y2_N0
\volume|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|LessThan0~2_combout\ = (!\volume|LessThan0~0_combout\) # (\volume|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_LessThan0~0_combout\,
	datad => \volume|ALT_INV_LessThan0~1_combout\,
	combout => \volume|LessThan0~2_combout\);

-- Location: LABCELL_X31_Y2_N54
\volume|scalar[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scalar[0]~9_combout\ = ( !\switch~input_o\ & ( (!\volume|Equal0~4_combout\ & (\volume|scalar\(0))) # (\volume|Equal0~4_combout\ & ((!\volume|scalar~0_combout\ & (\volume|scalar\(0))) # (\volume|scalar~0_combout\ & (((\volume|scalar\(7) & 
-- \volume|Add2~1_sumout\)))))) ) ) # ( \switch~input_o\ & ( (\volume|scalar\(0) & ((!\volume|Equal0~4_combout\) # ((\volume|LessThan0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010001010100010001010100010101010100010101110100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scalar\(0),
	datab => \volume|ALT_INV_Equal0~4_combout\,
	datac => \volume|ALT_INV_LessThan0~2_combout\,
	datad => \volume|ALT_INV_scalar\(7),
	datae => \ALT_INV_switch~input_o\,
	dataf => \volume|ALT_INV_Add2~1_sumout\,
	datag => \volume|ALT_INV_scalar~0_combout\,
	combout => \volume|scalar[0]~9_combout\);

-- Location: FF_X31_Y2_N56
\volume|scalar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scalar[0]~9_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scalar\(0));

-- Location: FF_X35_Y2_N59
\spi|SDATA_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(1));

-- Location: LABCELL_X33_Y2_N15
\spi|BYTE0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(1) = ( \spi|BYTE0\(1) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|SDATA_register\(1)))) ) ) # ( !\spi|BYTE0\(1) & ( (\spi|SDATA_register\(1) & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(1),
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(1),
	combout => \spi|BYTE0\(1));

-- Location: FF_X35_Y2_N2
\spi|SDATA_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(2));

-- Location: LABCELL_X33_Y2_N6
\spi|BYTE0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(2) = ( \spi|BYTE0\(2) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|SDATA_register\(2)))) ) ) # ( !\spi|BYTE0\(2) & ( (\spi|SDATA_register\(2) & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(2),
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(2),
	combout => \spi|BYTE0\(2));

-- Location: FF_X35_Y2_N50
\spi|SDATA_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(3));

-- Location: LABCELL_X31_Y2_N39
\spi|BYTE0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(3) = ( \CS~input_o\ & ( \spi|SDATA_register\(3) & ( \reset~input_o\ ) ) ) # ( !\CS~input_o\ & ( \spi|SDATA_register\(3) & ( (\reset~input_o\ & \spi|BYTE0\(3)) ) ) ) # ( !\CS~input_o\ & ( !\spi|SDATA_register\(3) & ( (\reset~input_o\ & 
-- \spi|BYTE0\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_BYTE0\(3),
	datae => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_SDATA_register\(3),
	combout => \spi|BYTE0\(3));

-- Location: FF_X35_Y4_N17
\spi|SDATA_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(4));

-- Location: LABCELL_X33_Y5_N51
\spi|BYTE0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(4) = ( \CS~input_o\ & ( \reset~input_o\ & ( \spi|SDATA_register\(4) ) ) ) # ( !\CS~input_o\ & ( \reset~input_o\ & ( \spi|BYTE0\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(4),
	datad => \spi|ALT_INV_BYTE0\(4),
	datae => \ALT_INV_CS~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \spi|BYTE0\(4));

-- Location: FF_X35_Y4_N23
\spi|SDATA_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(5));

-- Location: LABCELL_X35_Y3_N42
\spi|BYTE0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(5) = ( \CS~input_o\ & ( \spi|BYTE0\(5) & ( (\spi|SDATA_register\(5) & \reset~input_o\) ) ) ) # ( !\CS~input_o\ & ( \spi|BYTE0\(5) & ( \reset~input_o\ ) ) ) # ( \CS~input_o\ & ( !\spi|BYTE0\(5) & ( (\spi|SDATA_register\(5) & \reset~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(5),
	combout => \spi|BYTE0\(5));

-- Location: FF_X35_Y4_N35
\spi|SDATA_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(5),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(6));

-- Location: LABCELL_X33_Y2_N42
\spi|BYTE0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|BYTE0\(6) = ( \spi|BYTE0\(6) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|SDATA_register\(6)))) ) ) # ( !\spi|BYTE0\(6) & ( (\spi|SDATA_register\(6) & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(6),
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(6),
	combout => \spi|BYTE0\(6));

-- Location: DSP_X32_Y6_N0
\volume|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \volume|Mult0~8_AX_bus\,
	ay => \volume|Mult0~8_AY_bus\,
	resulta => \volume|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X33_Y2_N24
\volume|scaled_vol[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[0]~3_combout\ = ( \volume|Mult0~15\ & ( !\volume|scaled_vol[0]~1_combout\ ) ) # ( !\volume|Mult0~15\ & ( \volume|scaled_vol[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[0]~1_combout\,
	dataf => \volume|ALT_INV_Mult0~15\,
	combout => \volume|scaled_vol[0]~3_combout\);

-- Location: FF_X33_Y2_N26
\volume|scaled_vol[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[0]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[0]~_emulated_q\);

-- Location: LABCELL_X33_Y2_N27
\volume|scaled_vol[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[0]~2_combout\ = ( \volume|scaled_vol[0]~_emulated_q\ & ( (!\reset~input_o\ & ((\spi|BYTE0\(0)))) # (\reset~input_o\ & (!\volume|scaled_vol[0]~1_combout\)) ) ) # ( !\volume|scaled_vol[0]~_emulated_q\ & ( (!\reset~input_o\ & 
-- ((\spi|BYTE0\(0)))) # (\reset~input_o\ & (\volume|scaled_vol[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001010111110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scaled_vol[0]~1_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_BYTE0\(0),
	dataf => \volume|ALT_INV_scaled_vol[0]~_emulated_q\,
	combout => \volume|scaled_vol[0]~2_combout\);

-- Location: LABCELL_X33_Y2_N48
\volume|scaled_vol[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[1]~5_combout\ = ( \spi|BYTE0\(1) & ( (!\reset~input_o\) # (\volume|scaled_vol[1]~5_combout\) ) ) # ( !\spi|BYTE0\(1) & ( (\volume|scaled_vol[1]~5_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[1]~5_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(1),
	combout => \volume|scaled_vol[1]~5_combout\);

-- Location: LABCELL_X33_Y2_N12
\volume|scaled_vol[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[1]~7_combout\ = ( \volume|Mult0~16\ & ( !\volume|scaled_vol[1]~5_combout\ ) ) # ( !\volume|Mult0~16\ & ( \volume|scaled_vol[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scaled_vol[1]~5_combout\,
	dataf => \volume|ALT_INV_Mult0~16\,
	combout => \volume|scaled_vol[1]~7_combout\);

-- Location: FF_X33_Y2_N14
\volume|scaled_vol[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[1]~7_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[1]~_emulated_q\);

-- Location: LABCELL_X33_Y2_N51
\volume|scaled_vol[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[1]~6_combout\ = ( \volume|scaled_vol[1]~_emulated_q\ & ( (!\reset~input_o\ & (\spi|BYTE0\(1))) # (\reset~input_o\ & ((!\volume|scaled_vol[1]~5_combout\))) ) ) # ( !\volume|scaled_vol[1]~_emulated_q\ & ( (!\reset~input_o\ & 
-- (\spi|BYTE0\(1))) # (\reset~input_o\ & ((\volume|scaled_vol[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_BYTE0\(1),
	datac => \ALT_INV_reset~input_o\,
	datad => \volume|ALT_INV_scaled_vol[1]~5_combout\,
	dataf => \volume|ALT_INV_scaled_vol[1]~_emulated_q\,
	combout => \volume|scaled_vol[1]~6_combout\);

-- Location: LABCELL_X33_Y2_N39
\volume|scaled_vol[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[2]~9_combout\ = ( \spi|BYTE0\(2) & ( (!\reset~input_o\) # (\volume|scaled_vol[2]~9_combout\) ) ) # ( !\spi|BYTE0\(2) & ( (\reset~input_o\ & \volume|scaled_vol[2]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \volume|ALT_INV_scaled_vol[2]~9_combout\,
	dataf => \spi|ALT_INV_BYTE0\(2),
	combout => \volume|scaled_vol[2]~9_combout\);

-- Location: LABCELL_X33_Y2_N9
\volume|scaled_vol[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[2]~11_combout\ = ( \volume|Mult0~17\ & ( !\volume|scaled_vol[2]~9_combout\ ) ) # ( !\volume|Mult0~17\ & ( \volume|scaled_vol[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_scaled_vol[2]~9_combout\,
	dataf => \volume|ALT_INV_Mult0~17\,
	combout => \volume|scaled_vol[2]~11_combout\);

-- Location: FF_X33_Y2_N11
\volume|scaled_vol[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[2]~11_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[2]~_emulated_q\);

-- Location: LABCELL_X33_Y2_N36
\volume|scaled_vol[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[2]~10_combout\ = ( \volume|scaled_vol[2]~9_combout\ & ( (!\reset~input_o\ & ((\spi|BYTE0\(2)))) # (\reset~input_o\ & (!\volume|scaled_vol[2]~_emulated_q\)) ) ) # ( !\volume|scaled_vol[2]~9_combout\ & ( (!\reset~input_o\ & 
-- ((\spi|BYTE0\(2)))) # (\reset~input_o\ & (\volume|scaled_vol[2]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scaled_vol[2]~_emulated_q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_BYTE0\(2),
	dataf => \volume|ALT_INV_scaled_vol[2]~9_combout\,
	combout => \volume|scaled_vol[2]~10_combout\);

-- Location: LABCELL_X31_Y2_N21
\volume|scaled_vol[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[3]~13_combout\ = ( \volume|scaled_vol[3]~13_combout\ & ( \spi|BYTE0\(3) ) ) # ( !\volume|scaled_vol[3]~13_combout\ & ( \spi|BYTE0\(3) & ( !\reset~input_o\ ) ) ) # ( \volume|scaled_vol[3]~13_combout\ & ( !\spi|BYTE0\(3) & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset~input_o\,
	datae => \volume|ALT_INV_scaled_vol[3]~13_combout\,
	dataf => \spi|ALT_INV_BYTE0\(3),
	combout => \volume|scaled_vol[3]~13_combout\);

-- Location: LABCELL_X31_Y2_N48
\volume|scaled_vol[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[3]~15_combout\ = ( \volume|Mult0~18\ & ( !\volume|scaled_vol[3]~13_combout\ ) ) # ( !\volume|Mult0~18\ & ( \volume|scaled_vol[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volume|ALT_INV_scaled_vol[3]~13_combout\,
	dataf => \volume|ALT_INV_Mult0~18\,
	combout => \volume|scaled_vol[3]~15_combout\);

-- Location: FF_X31_Y2_N50
\volume|scaled_vol[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[3]~15_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[3]~_emulated_q\);

-- Location: LABCELL_X31_Y2_N42
\volume|scaled_vol[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[3]~14_combout\ = ( \reset~input_o\ & ( \volume|scaled_vol[3]~_emulated_q\ & ( !\volume|scaled_vol[3]~13_combout\ ) ) ) # ( !\reset~input_o\ & ( \volume|scaled_vol[3]~_emulated_q\ & ( \spi|BYTE0\(3) ) ) ) # ( \reset~input_o\ & ( 
-- !\volume|scaled_vol[3]~_emulated_q\ & ( \volume|scaled_vol[3]~13_combout\ ) ) ) # ( !\reset~input_o\ & ( !\volume|scaled_vol[3]~_emulated_q\ & ( \spi|BYTE0\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[3]~13_combout\,
	datad => \spi|ALT_INV_BYTE0\(3),
	datae => \ALT_INV_reset~input_o\,
	dataf => \volume|ALT_INV_scaled_vol[3]~_emulated_q\,
	combout => \volume|scaled_vol[3]~14_combout\);

-- Location: LABCELL_X33_Y5_N39
\volume|scaled_vol[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[4]~17_combout\ = ( \reset~input_o\ & ( \spi|BYTE0\(4) & ( \volume|scaled_vol[4]~17_combout\ ) ) ) # ( !\reset~input_o\ & ( \spi|BYTE0\(4) ) ) # ( \reset~input_o\ & ( !\spi|BYTE0\(4) & ( \volume|scaled_vol[4]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[4]~17_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(4),
	combout => \volume|scaled_vol[4]~17_combout\);

-- Location: LABCELL_X33_Y5_N42
\volume|scaled_vol[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[4]~19_combout\ = ( !\volume|Mult0~19\ & ( \volume|scaled_vol[4]~17_combout\ ) ) # ( \volume|Mult0~19\ & ( !\volume|scaled_vol[4]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \volume|ALT_INV_Mult0~19\,
	dataf => \volume|ALT_INV_scaled_vol[4]~17_combout\,
	combout => \volume|scaled_vol[4]~19_combout\);

-- Location: FF_X33_Y5_N44
\volume|scaled_vol[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[4]~19_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[4]~_emulated_q\);

-- Location: LABCELL_X33_Y5_N57
\volume|scaled_vol[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[4]~18_combout\ = ( \volume|scaled_vol[4]~17_combout\ & ( \volume|scaled_vol[4]~_emulated_q\ & ( (!\reset~input_o\ & \spi|BYTE0\(4)) ) ) ) # ( !\volume|scaled_vol[4]~17_combout\ & ( \volume|scaled_vol[4]~_emulated_q\ & ( (\spi|BYTE0\(4)) 
-- # (\reset~input_o\) ) ) ) # ( \volume|scaled_vol[4]~17_combout\ & ( !\volume|scaled_vol[4]~_emulated_q\ & ( (\spi|BYTE0\(4)) # (\reset~input_o\) ) ) ) # ( !\volume|scaled_vol[4]~17_combout\ & ( !\volume|scaled_vol[4]~_emulated_q\ & ( (!\reset~input_o\ & 
-- \spi|BYTE0\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100110011111111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_BYTE0\(4),
	datae => \volume|ALT_INV_scaled_vol[4]~17_combout\,
	dataf => \volume|ALT_INV_scaled_vol[4]~_emulated_q\,
	combout => \volume|scaled_vol[4]~18_combout\);

-- Location: LABCELL_X35_Y3_N30
\volume|scaled_vol[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[5]~21_combout\ = ( \spi|BYTE0\(5) & ( (!\reset~input_o\) # (\volume|scaled_vol[5]~21_combout\) ) ) # ( !\spi|BYTE0\(5) & ( (\reset~input_o\ & \volume|scaled_vol[5]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \volume|ALT_INV_scaled_vol[5]~21_combout\,
	dataf => \spi|ALT_INV_BYTE0\(5),
	combout => \volume|scaled_vol[5]~21_combout\);

-- Location: LABCELL_X35_Y3_N54
\volume|scaled_vol[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[5]~23_combout\ = ( \volume|Mult0~20\ & ( !\volume|scaled_vol[5]~21_combout\ ) ) # ( !\volume|Mult0~20\ & ( \volume|scaled_vol[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[5]~21_combout\,
	dataf => \volume|ALT_INV_Mult0~20\,
	combout => \volume|scaled_vol[5]~23_combout\);

-- Location: FF_X35_Y3_N56
\volume|scaled_vol[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[5]~23_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[5]~_emulated_q\);

-- Location: LABCELL_X35_Y3_N9
\volume|scaled_vol[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[5]~22_combout\ = ( \volume|scaled_vol[5]~_emulated_q\ & ( \volume|scaled_vol[5]~21_combout\ & ( (\spi|BYTE0\(5) & !\reset~input_o\) ) ) ) # ( !\volume|scaled_vol[5]~_emulated_q\ & ( \volume|scaled_vol[5]~21_combout\ & ( 
-- (\reset~input_o\) # (\spi|BYTE0\(5)) ) ) ) # ( \volume|scaled_vol[5]~_emulated_q\ & ( !\volume|scaled_vol[5]~21_combout\ & ( (\reset~input_o\) # (\spi|BYTE0\(5)) ) ) ) # ( !\volume|scaled_vol[5]~_emulated_q\ & ( !\volume|scaled_vol[5]~21_combout\ & ( 
-- (\spi|BYTE0\(5) & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100001111111111110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi|ALT_INV_BYTE0\(5),
	datad => \ALT_INV_reset~input_o\,
	datae => \volume|ALT_INV_scaled_vol[5]~_emulated_q\,
	dataf => \volume|ALT_INV_scaled_vol[5]~21_combout\,
	combout => \volume|scaled_vol[5]~22_combout\);

-- Location: LABCELL_X33_Y2_N33
\volume|scaled_vol[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[6]~25_combout\ = ( \spi|BYTE0\(6) & ( (!\reset~input_o\) # (\volume|scaled_vol[6]~25_combout\) ) ) # ( !\spi|BYTE0\(6) & ( (\volume|scaled_vol[6]~25_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volume|ALT_INV_scaled_vol[6]~25_combout\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \spi|ALT_INV_BYTE0\(6),
	combout => \volume|scaled_vol[6]~25_combout\);

-- Location: LABCELL_X33_Y2_N45
\volume|scaled_vol[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[6]~27_combout\ = ( \volume|Mult0~21\ & ( !\volume|scaled_vol[6]~25_combout\ ) ) # ( !\volume|Mult0~21\ & ( \volume|scaled_vol[6]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_vol[6]~25_combout\,
	dataf => \volume|ALT_INV_Mult0~21\,
	combout => \volume|scaled_vol[6]~27_combout\);

-- Location: FF_X33_Y2_N47
\volume|scaled_vol[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[6]~27_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol[6]~_emulated_q\);

-- Location: LABCELL_X33_Y2_N30
\volume|scaled_vol[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[6]~26_combout\ = ( \volume|scaled_vol[6]~25_combout\ & ( (!\reset~input_o\ & (\spi|BYTE0\(6))) # (\reset~input_o\ & ((!\volume|scaled_vol[6]~_emulated_q\))) ) ) # ( !\volume|scaled_vol[6]~25_combout\ & ( (!\reset~input_o\ & 
-- (\spi|BYTE0\(6))) # (\reset~input_o\ & ((\volume|scaled_vol[6]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_BYTE0\(6),
	datac => \ALT_INV_reset~input_o\,
	datad => \volume|ALT_INV_scaled_vol[6]~_emulated_q\,
	dataf => \volume|ALT_INV_scaled_vol[6]~25_combout\,
	combout => \volume|scaled_vol[6]~26_combout\);

-- Location: LABCELL_X31_Y6_N24
\volume|scaled_vol[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \volume|scaled_vol[7]~feeder_combout\ = ( \volume|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_Mult0~22\,
	combout => \volume|scaled_vol[7]~feeder_combout\);

-- Location: FF_X31_Y6_N26
\volume|scaled_vol[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \volume|scaled_vol[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \volume|scaled_vol\(7));

-- Location: IOIBUF_X62_Y0_N18
\BIT_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT_CLK,
	o => \BIT_CLK~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\LR_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LR_CLK,
	o => \LR_CLK~input_o\);

-- Location: CLKCTRL_G5
\BIT_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \BIT_CLK~input_o\,
	outclk => \BIT_CLK~inputCLKENA0_outclk\);

-- Location: FF_X37_Y1_N35
\i2sin|s_current_lr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \LR_CLK~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|s_current_lr~q\);

-- Location: LABCELL_X37_Y1_N36
\i2sin|i2s_in~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|i2s_in~0_combout\ = ( \LR_CLK~input_o\ & ( !\i2sin|s_current_lr~q\ ) ) # ( !\LR_CLK~input_o\ & ( \i2sin|s_current_lr~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sin|ALT_INV_s_current_lr~q\,
	datae => \ALT_INV_LR_CLK~input_o\,
	combout => \i2sin|i2s_in~0_combout\);

-- Location: FF_X37_Y1_N38
\i2sin|s_parallel_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|i2s_in~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|s_parallel_load~q\);

-- Location: LABCELL_X37_Y1_N48
\i2sin|DATA_RDY_R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_RDY_R~0_combout\ = ( \i2sin|s_parallel_load~q\ & ( \i2sin|s_current_lr~q\ & ( !\LR_CLK~input_o\ ) ) ) # ( !\i2sin|s_parallel_load~q\ & ( \i2sin|s_current_lr~q\ & ( (!\LR_CLK~input_o\) # (\i2sin|DATA_RDY_R~q\) ) ) ) # ( 
-- \i2sin|s_parallel_load~q\ & ( !\i2sin|s_current_lr~q\ & ( (\i2sin|DATA_RDY_R~q\ & \LR_CLK~input_o\) ) ) ) # ( !\i2sin|s_parallel_load~q\ & ( !\i2sin|s_current_lr~q\ & ( \i2sin|DATA_RDY_R~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000101010111111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_DATA_RDY_R~q\,
	datad => \ALT_INV_LR_CLK~input_o\,
	datae => \i2sin|ALT_INV_s_parallel_load~q\,
	dataf => \i2sin|ALT_INV_s_current_lr~q\,
	combout => \i2sin|DATA_RDY_R~0_combout\);

-- Location: LABCELL_X37_Y1_N12
\i2sin|DATA_RDY_R~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_RDY_R~feeder_combout\ = ( \i2sin|DATA_RDY_R~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_RDY_R~0_combout\,
	combout => \i2sin|DATA_RDY_R~feeder_combout\);

-- Location: FF_X37_Y1_N14
\i2sin|DATA_RDY_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~input_o\,
	d => \i2sin|DATA_RDY_R~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_RDY_R~q\);

-- Location: IOIBUF_X54_Y0_N1
\DIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: LABCELL_X45_Y4_N27
\i2sin|shift_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[0]~feeder_combout\ = ( \DIN~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN~input_o\,
	combout => \i2sin|shift_reg[0]~feeder_combout\);

-- Location: FF_X45_Y4_N29
\i2sin|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(0));

-- Location: MLABCELL_X34_Y4_N30
\i2sin|DATA_R[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[0]~feeder_combout\ = ( \i2sin|shift_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(0),
	combout => \i2sin|DATA_R[0]~feeder_combout\);

-- Location: LABCELL_X37_Y1_N57
\i2sin|DATA_R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[0]~0_combout\ = ( !\LR_CLK~input_o\ & ( (!\i2sin|s_current_lr~q\ & \i2sin|s_parallel_load~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_s_current_lr~q\,
	datac => \i2sin|ALT_INV_s_parallel_load~q\,
	datae => \ALT_INV_LR_CLK~input_o\,
	combout => \i2sin|DATA_R[0]~0_combout\);

-- Location: FF_X34_Y4_N32
\i2sin|DATA_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(0));

-- Location: MLABCELL_X34_Y4_N54
\buff|DATARSIG[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[0]~feeder_combout\ = ( \i2sin|DATA_R\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(0),
	combout => \buff|DATARSIG[0]~feeder_combout\);

-- Location: FF_X34_Y4_N55
\buff|DATARSIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(0));

-- Location: LABCELL_X36_Y4_N3
\i2sin|shift_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[1]~feeder_combout\ = ( \i2sin|shift_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(0),
	combout => \i2sin|shift_reg[1]~feeder_combout\);

-- Location: FF_X36_Y4_N4
\i2sin|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(1));

-- Location: LABCELL_X37_Y4_N15
\i2sin|DATA_R[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[1]~feeder_combout\ = \i2sin|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(1),
	combout => \i2sin|DATA_R[1]~feeder_combout\);

-- Location: FF_X37_Y4_N17
\i2sin|DATA_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(1));

-- Location: LABCELL_X37_Y4_N21
\buff|DATARSIG[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[1]~feeder_combout\ = ( \i2sin|DATA_R\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(1),
	combout => \buff|DATARSIG[1]~feeder_combout\);

-- Location: FF_X37_Y4_N22
\buff|DATARSIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(1));

-- Location: FF_X35_Y4_N1
\i2sin|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(2));

-- Location: MLABCELL_X34_Y4_N39
\i2sin|DATA_R[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[2]~feeder_combout\ = ( \i2sin|shift_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(2),
	combout => \i2sin|DATA_R[2]~feeder_combout\);

-- Location: FF_X34_Y4_N41
\i2sin|DATA_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(2));

-- Location: MLABCELL_X34_Y4_N51
\buff|DATARSIG[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[2]~feeder_combout\ = ( \i2sin|DATA_R\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(2),
	combout => \buff|DATARSIG[2]~feeder_combout\);

-- Location: FF_X34_Y4_N52
\buff|DATARSIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(2));

-- Location: LABCELL_X33_Y4_N39
\i2sin|shift_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[3]~feeder_combout\ = ( \i2sin|shift_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(2),
	combout => \i2sin|shift_reg[3]~feeder_combout\);

-- Location: FF_X33_Y4_N40
\i2sin|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(3));

-- Location: MLABCELL_X34_Y4_N42
\i2sin|DATA_R[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[3]~feeder_combout\ = \i2sin|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(3),
	combout => \i2sin|DATA_R[3]~feeder_combout\);

-- Location: FF_X34_Y4_N44
\i2sin|DATA_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(3));

-- Location: MLABCELL_X34_Y4_N12
\buff|DATARSIG[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[3]~feeder_combout\ = ( \i2sin|DATA_R\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(3),
	combout => \buff|DATARSIG[3]~feeder_combout\);

-- Location: FF_X34_Y4_N14
\buff|DATARSIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(3));

-- Location: FF_X33_Y4_N1
\i2sin|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(4));

-- Location: LABCELL_X37_Y4_N33
\i2sin|DATA_R[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[4]~feeder_combout\ = ( \i2sin|shift_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(4),
	combout => \i2sin|DATA_R[4]~feeder_combout\);

-- Location: FF_X37_Y4_N35
\i2sin|DATA_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(4));

-- Location: LABCELL_X37_Y4_N39
\buff|DATARSIG[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[4]~feeder_combout\ = ( \i2sin|DATA_R\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(4),
	combout => \buff|DATARSIG[4]~feeder_combout\);

-- Location: FF_X37_Y4_N40
\buff|DATARSIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(4));

-- Location: FF_X33_Y4_N4
\i2sin|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(5));

-- Location: FF_X34_Y4_N8
\i2sin|DATA_R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(5),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(5));

-- Location: MLABCELL_X34_Y4_N18
\buff|DATARSIG[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[5]~feeder_combout\ = ( \i2sin|DATA_R\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(5),
	combout => \buff|DATARSIG[5]~feeder_combout\);

-- Location: FF_X34_Y4_N20
\buff|DATARSIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(5));

-- Location: FF_X33_Y4_N5
\i2sin|shift_reg[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[5]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y4_N36
\i2sin|shift_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[6]~feeder_combout\ = \i2sin|shift_reg[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg[5]~DUPLICATE_q\,
	combout => \i2sin|shift_reg[6]~feeder_combout\);

-- Location: FF_X33_Y4_N37
\i2sin|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(6));

-- Location: MLABCELL_X34_Y4_N9
\i2sin|DATA_R[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[6]~feeder_combout\ = \i2sin|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg\(6),
	combout => \i2sin|DATA_R[6]~feeder_combout\);

-- Location: FF_X34_Y4_N11
\i2sin|DATA_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(6));

-- Location: MLABCELL_X34_Y4_N21
\buff|DATARSIG[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[6]~feeder_combout\ = ( \i2sin|DATA_R\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(6),
	combout => \buff|DATARSIG[6]~feeder_combout\);

-- Location: FF_X34_Y4_N22
\buff|DATARSIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(6));

-- Location: LABCELL_X36_Y4_N0
\i2sin|shift_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[7]~feeder_combout\ = \i2sin|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(6),
	combout => \i2sin|shift_reg[7]~feeder_combout\);

-- Location: FF_X36_Y4_N1
\i2sin|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(7));

-- Location: FF_X34_Y4_N26
\i2sin|DATA_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(7),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(7));

-- Location: MLABCELL_X34_Y4_N0
\buff|DATARSIG[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[7]~feeder_combout\ = ( \i2sin|DATA_R\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(7),
	combout => \buff|DATARSIG[7]~feeder_combout\);

-- Location: FF_X34_Y4_N1
\buff|DATARSIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(7));

-- Location: LABCELL_X37_Y4_N27
\i2sin|shift_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[8]~feeder_combout\ = \i2sin|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(7),
	combout => \i2sin|shift_reg[8]~feeder_combout\);

-- Location: FF_X37_Y4_N28
\i2sin|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(8));

-- Location: LABCELL_X37_Y4_N42
\i2sin|DATA_R[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[8]~feeder_combout\ = \i2sin|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(8),
	combout => \i2sin|DATA_R[8]~feeder_combout\);

-- Location: FF_X37_Y4_N44
\i2sin|DATA_R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(8));

-- Location: LABCELL_X37_Y4_N48
\buff|DATARSIG[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[8]~feeder_combout\ = ( \i2sin|DATA_R\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(8),
	combout => \buff|DATARSIG[8]~feeder_combout\);

-- Location: FF_X37_Y4_N49
\buff|DATARSIG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(8));

-- Location: LABCELL_X35_Y1_N30
\i2sin|shift_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[9]~feeder_combout\ = ( \i2sin|shift_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(8),
	combout => \i2sin|shift_reg[9]~feeder_combout\);

-- Location: FF_X35_Y1_N31
\i2sin|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(9));

-- Location: LABCELL_X36_Y3_N30
\i2sin|DATA_R[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[9]~feeder_combout\ = ( \i2sin|shift_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(9),
	combout => \i2sin|DATA_R[9]~feeder_combout\);

-- Location: FF_X36_Y3_N32
\i2sin|DATA_R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(9));

-- Location: LABCELL_X36_Y3_N24
\buff|DATARSIG[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[9]~feeder_combout\ = ( \i2sin|DATA_R\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(9),
	combout => \buff|DATARSIG[9]~feeder_combout\);

-- Location: FF_X36_Y3_N26
\buff|DATARSIG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(9));

-- Location: LABCELL_X36_Y3_N42
\i2sin|shift_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[10]~feeder_combout\ = ( \i2sin|shift_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(9),
	combout => \i2sin|shift_reg[10]~feeder_combout\);

-- Location: FF_X36_Y3_N43
\i2sin|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(10));

-- Location: LABCELL_X36_Y3_N33
\i2sin|DATA_R[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[10]~feeder_combout\ = \i2sin|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(10),
	combout => \i2sin|DATA_R[10]~feeder_combout\);

-- Location: FF_X36_Y3_N35
\i2sin|DATA_R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(10));

-- Location: LABCELL_X36_Y3_N3
\buff|DATARSIG[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[10]~feeder_combout\ = ( \i2sin|DATA_R\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(10),
	combout => \buff|DATARSIG[10]~feeder_combout\);

-- Location: FF_X36_Y3_N5
\buff|DATARSIG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(10));

-- Location: LABCELL_X36_Y3_N45
\i2sin|shift_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[11]~feeder_combout\ = \i2sin|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(10),
	combout => \i2sin|shift_reg[11]~feeder_combout\);

-- Location: FF_X36_Y3_N47
\i2sin|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(11));

-- Location: LABCELL_X36_Y3_N12
\i2sin|DATA_R[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[11]~feeder_combout\ = \i2sin|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(11),
	combout => \i2sin|DATA_R[11]~feeder_combout\);

-- Location: FF_X36_Y3_N14
\i2sin|DATA_R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(11));

-- Location: LABCELL_X36_Y3_N54
\buff|DATARSIG[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[11]~feeder_combout\ = ( \i2sin|DATA_R\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(11),
	combout => \buff|DATARSIG[11]~feeder_combout\);

-- Location: FF_X36_Y3_N56
\buff|DATARSIG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(11));

-- Location: LABCELL_X36_Y3_N36
\i2sin|shift_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[12]~feeder_combout\ = \i2sin|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(11),
	combout => \i2sin|shift_reg[12]~feeder_combout\);

-- Location: FF_X36_Y3_N37
\i2sin|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(12));

-- Location: LABCELL_X36_Y3_N15
\i2sin|DATA_R[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[12]~feeder_combout\ = \i2sin|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(12),
	combout => \i2sin|DATA_R[12]~feeder_combout\);

-- Location: FF_X36_Y3_N17
\i2sin|DATA_R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(12));

-- Location: LABCELL_X36_Y3_N57
\buff|DATARSIG[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[12]~feeder_combout\ = ( \i2sin|DATA_R\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(12),
	combout => \buff|DATARSIG[12]~feeder_combout\);

-- Location: FF_X36_Y3_N59
\buff|DATARSIG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(12));

-- Location: LABCELL_X36_Y3_N39
\i2sin|shift_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[13]~feeder_combout\ = \i2sin|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(12),
	combout => \i2sin|shift_reg[13]~feeder_combout\);

-- Location: FF_X36_Y3_N41
\i2sin|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(13));

-- Location: LABCELL_X36_Y3_N6
\i2sin|DATA_R[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[13]~feeder_combout\ = \i2sin|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(13),
	combout => \i2sin|DATA_R[13]~feeder_combout\);

-- Location: FF_X36_Y3_N8
\i2sin|DATA_R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(13));

-- Location: LABCELL_X36_Y3_N48
\buff|DATARSIG[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[13]~feeder_combout\ = ( \i2sin|DATA_R\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(13),
	combout => \buff|DATARSIG[13]~feeder_combout\);

-- Location: FF_X36_Y3_N50
\buff|DATARSIG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(13));

-- Location: LABCELL_X36_Y3_N18
\i2sin|shift_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[14]~feeder_combout\ = \i2sin|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(13),
	combout => \i2sin|shift_reg[14]~feeder_combout\);

-- Location: FF_X36_Y3_N19
\i2sin|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[14]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(14));

-- Location: LABCELL_X36_Y3_N9
\i2sin|DATA_R[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[14]~feeder_combout\ = \i2sin|shift_reg\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(14),
	combout => \i2sin|DATA_R[14]~feeder_combout\);

-- Location: FF_X36_Y3_N11
\i2sin|DATA_R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[14]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(14));

-- Location: LABCELL_X36_Y3_N51
\buff|DATARSIG[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[14]~feeder_combout\ = ( \i2sin|DATA_R\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(14),
	combout => \buff|DATARSIG[14]~feeder_combout\);

-- Location: FF_X36_Y3_N53
\buff|DATARSIG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[14]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(14));

-- Location: FF_X36_Y4_N28
\i2sin|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(15));

-- Location: LABCELL_X37_Y4_N6
\i2sin|DATA_R[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[15]~feeder_combout\ = \i2sin|shift_reg\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(15),
	combout => \i2sin|DATA_R[15]~feeder_combout\);

-- Location: FF_X37_Y4_N8
\i2sin|DATA_R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(15));

-- Location: LABCELL_X37_Y4_N54
\buff|DATARSIG[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATARSIG[15]~feeder_combout\ = ( \i2sin|DATA_R\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(15),
	combout => \buff|DATARSIG[15]~feeder_combout\);

-- Location: FF_X37_Y4_N56
\buff|DATARSIG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_R~q\,
	d => \buff|DATARSIG[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATARSIG\(15));

-- Location: DSP_X32_Y4_N0
\volume|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "1",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \volume|Mult2~8_ACLR_bus\,
	clk => \volume|Mult2~8_CLK_bus\,
	ena => \volume|Mult2~8_ENA_bus\,
	ax => \volume|Mult2~8_AX_bus\,
	ay => \volume|Mult2~8_AY_bus\,
	resulta => \volume|Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X33_Y3_N33
\buffmijnshitup|DATA_R_OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[8]~feeder_combout\ = ( \volume|scaled_music_R\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(8),
	combout => \buffmijnshitup|DATA_R_OUT[8]~feeder_combout\);

-- Location: FF_X33_Y3_N35
\buffmijnshitup|DATA_R_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(8));

-- Location: LABCELL_X31_Y4_N51
\buffmijnshitup|DATA_R_OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[10]~feeder_combout\ = ( \volume|scaled_music_R\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(10),
	combout => \buffmijnshitup|DATA_R_OUT[10]~feeder_combout\);

-- Location: FF_X31_Y4_N53
\buffmijnshitup|DATA_R_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(10));

-- Location: MLABCELL_X34_Y3_N39
\buffmijnshitup|DATA_R_OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[9]~feeder_combout\ = ( \volume|scaled_music_R\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(9),
	combout => \buffmijnshitup|DATA_R_OUT[9]~feeder_combout\);

-- Location: FF_X34_Y3_N40
\buffmijnshitup|DATA_R_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(9));

-- Location: FF_X34_Y3_N41
\buffmijnshitup|DATA_R_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(12),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(12));

-- Location: FF_X34_Y3_N31
\buffmijnshitup|DATA_R_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(13),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(13));

-- Location: FF_X34_Y3_N14
\buffmijnshitup|DATA_R_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(14));

-- Location: LABCELL_X33_Y3_N48
\buffmijnshitup|DATA_R_OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[15]~feeder_combout\ = ( \volume|scaled_music_R\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(15),
	combout => \buffmijnshitup|DATA_R_OUT[15]~feeder_combout\);

-- Location: FF_X33_Y3_N49
\buffmijnshitup|DATA_R_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(15));

-- Location: MLABCELL_X34_Y3_N24
\tootherdac|Mux1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~26_combout\ = ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & (((!\tootherdac|counter\(0) & (\buffmijnshitup|DATA_R_OUT\(15))) # (\tootherdac|counter\(0) & ((\buffmijnshitup|DATA_R_OUT\(14))))))) # (\tootherdac|counter\(2) & 
-- ((((\tootherdac|counter\(0)))))) ) ) # ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & (((!\tootherdac|counter\(0) & ((\buffmijnshitup|DATA_R_OUT\(13)))) # (\tootherdac|counter\(0) & (\buffmijnshitup|DATA_R_OUT\(12)))))) # 
-- (\tootherdac|counter\(2) & ((((\tootherdac|counter\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(2),
	datab => \buffmijnshitup|ALT_INV_DATA_R_OUT\(12),
	datac => \buffmijnshitup|ALT_INV_DATA_R_OUT\(13),
	datad => \buffmijnshitup|ALT_INV_DATA_R_OUT\(14),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_counter\(0),
	datag => \buffmijnshitup|ALT_INV_DATA_R_OUT\(15),
	combout => \tootherdac|Mux1~26_combout\);

-- Location: FF_X34_Y3_N50
\buffmijnshitup|DATA_R_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(11),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(11));

-- Location: MLABCELL_X34_Y3_N0
\tootherdac|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~8_combout\ = ( !\tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~26_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~26_combout\ & ((\buffmijnshitup|DATA_R_OUT\(11)))) # 
-- (\tootherdac|Mux1~26_combout\ & (\buffmijnshitup|DATA_R_OUT\(10)))))) ) ) # ( \tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~26_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~26_combout\ & 
-- ((\buffmijnshitup|DATA_R_OUT\(9)))) # (\tootherdac|Mux1~26_combout\ & (\buffmijnshitup|DATA_R_OUT\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffmijnshitup|ALT_INV_DATA_R_OUT\(8),
	datab => \buffmijnshitup|ALT_INV_DATA_R_OUT\(10),
	datac => \buffmijnshitup|ALT_INV_DATA_R_OUT\(9),
	datad => \tootherdac|ALT_INV_counter\(2),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_Mux1~26_combout\,
	datag => \buffmijnshitup|ALT_INV_DATA_R_OUT\(11),
	combout => \tootherdac|Mux1~8_combout\);

-- Location: LABCELL_X37_Y1_N21
\i2sin|DATA_RDY_L~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_RDY_L~0_combout\ = ( \i2sin|s_parallel_load~q\ & ( \i2sin|s_current_lr~q\ & ( (\i2sin|DATA_RDY_L~q\ & !\LR_CLK~input_o\) ) ) ) # ( !\i2sin|s_parallel_load~q\ & ( \i2sin|s_current_lr~q\ & ( \i2sin|DATA_RDY_L~q\ ) ) ) # ( 
-- \i2sin|s_parallel_load~q\ & ( !\i2sin|s_current_lr~q\ & ( \LR_CLK~input_o\ ) ) ) # ( !\i2sin|s_parallel_load~q\ & ( !\i2sin|s_current_lr~q\ & ( (\LR_CLK~input_o\) # (\i2sin|DATA_RDY_L~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100110011001100110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_DATA_RDY_L~q\,
	datac => \ALT_INV_LR_CLK~input_o\,
	datae => \i2sin|ALT_INV_s_parallel_load~q\,
	dataf => \i2sin|ALT_INV_s_current_lr~q\,
	combout => \i2sin|DATA_RDY_L~0_combout\);

-- Location: FF_X36_Y1_N14
\i2sin|DATA_RDY_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~input_o\,
	asdata => \i2sin|DATA_RDY_L~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_RDY_L~q\);

-- Location: LABCELL_X36_Y4_N6
\i2sin|DATA_L[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[0]~feeder_combout\ = ( \i2sin|shift_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(0),
	combout => \i2sin|DATA_L[0]~feeder_combout\);

-- Location: LABCELL_X37_Y1_N45
\i2sin|DATA_L[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[0]~0_combout\ = ( \LR_CLK~input_o\ & ( (\i2sin|s_current_lr~q\ & \i2sin|s_parallel_load~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_s_current_lr~q\,
	datac => \i2sin|ALT_INV_s_parallel_load~q\,
	datae => \ALT_INV_LR_CLK~input_o\,
	combout => \i2sin|DATA_L[0]~0_combout\);

-- Location: FF_X36_Y4_N8
\i2sin|DATA_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(0));

-- Location: LABCELL_X36_Y4_N42
\buff|DATALSIG[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[0]~feeder_combout\ = ( \i2sin|DATA_L\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(0),
	combout => \buff|DATALSIG[0]~feeder_combout\);

-- Location: FF_X36_Y4_N44
\buff|DATALSIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(0));

-- Location: FF_X36_Y4_N11
\i2sin|DATA_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(1));

-- Location: LABCELL_X36_Y4_N45
\buff|DATALSIG[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[1]~feeder_combout\ = ( \i2sin|DATA_L\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(1),
	combout => \buff|DATALSIG[1]~feeder_combout\);

-- Location: FF_X36_Y4_N47
\buff|DATALSIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(1));

-- Location: LABCELL_X33_Y4_N6
\i2sin|DATA_L[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[2]~feeder_combout\ = ( \i2sin|shift_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(2),
	combout => \i2sin|DATA_L[2]~feeder_combout\);

-- Location: FF_X33_Y4_N8
\i2sin|DATA_L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(2));

-- Location: LABCELL_X33_Y4_N54
\buff|DATALSIG[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[2]~feeder_combout\ = ( \i2sin|DATA_L\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(2),
	combout => \buff|DATALSIG[2]~feeder_combout\);

-- Location: FF_X33_Y4_N55
\buff|DATALSIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(2));

-- Location: FF_X33_Y4_N11
\i2sin|DATA_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(3));

-- Location: LABCELL_X33_Y4_N21
\buff|DATALSIG[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[3]~feeder_combout\ = ( \i2sin|DATA_L\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(3),
	combout => \buff|DATALSIG[3]~feeder_combout\);

-- Location: FF_X33_Y4_N23
\buff|DATALSIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(3));

-- Location: FF_X33_Y4_N32
\i2sin|DATA_L[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(4));

-- Location: LABCELL_X33_Y4_N48
\buff|DATALSIG[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[4]~feeder_combout\ = ( \i2sin|DATA_L\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(4),
	combout => \buff|DATALSIG[4]~feeder_combout\);

-- Location: FF_X33_Y4_N49
\buff|DATALSIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(4));

-- Location: LABCELL_X33_Y4_N33
\i2sin|DATA_L[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[5]~feeder_combout\ = \i2sin|shift_reg[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg[5]~DUPLICATE_q\,
	combout => \i2sin|DATA_L[5]~feeder_combout\);

-- Location: FF_X33_Y4_N35
\i2sin|DATA_L[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(5));

-- Location: LABCELL_X33_Y4_N27
\buff|DATALSIG[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[5]~feeder_combout\ = ( \i2sin|DATA_L\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(5),
	combout => \buff|DATALSIG[5]~feeder_combout\);

-- Location: FF_X33_Y4_N29
\buff|DATALSIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(5));

-- Location: FF_X36_Y4_N32
\i2sin|DATA_L[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(6));

-- Location: LABCELL_X36_Y4_N18
\buff|DATALSIG[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[6]~feeder_combout\ = ( \i2sin|DATA_L\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(6),
	combout => \buff|DATALSIG[6]~feeder_combout\);

-- Location: FF_X36_Y4_N20
\buff|DATALSIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(6));

-- Location: LABCELL_X36_Y4_N33
\i2sin|DATA_L[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[7]~feeder_combout\ = \i2sin|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg\(7),
	combout => \i2sin|DATA_L[7]~feeder_combout\);

-- Location: FF_X36_Y4_N35
\i2sin|DATA_L[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(7));

-- Location: LABCELL_X36_Y4_N21
\buff|DATALSIG[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[7]~feeder_combout\ = ( \i2sin|DATA_L\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(7),
	combout => \buff|DATALSIG[7]~feeder_combout\);

-- Location: FF_X36_Y4_N23
\buff|DATALSIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(7));

-- Location: LABCELL_X35_Y1_N6
\i2sin|DATA_L[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[8]~feeder_combout\ = ( \i2sin|shift_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(8),
	combout => \i2sin|DATA_L[8]~feeder_combout\);

-- Location: FF_X35_Y1_N8
\i2sin|DATA_L[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(8));

-- Location: LABCELL_X35_Y1_N39
\buff|DATALSIG[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[8]~feeder_combout\ = ( \i2sin|DATA_L\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(8),
	combout => \buff|DATALSIG[8]~feeder_combout\);

-- Location: FF_X35_Y1_N40
\buff|DATALSIG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(8));

-- Location: LABCELL_X35_Y1_N12
\i2sin|DATA_L[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[9]~feeder_combout\ = \i2sin|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(9),
	combout => \i2sin|DATA_L[9]~feeder_combout\);

-- Location: FF_X35_Y1_N14
\i2sin|DATA_L[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(9));

-- Location: LABCELL_X35_Y1_N24
\buff|DATALSIG[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[9]~feeder_combout\ = ( \i2sin|DATA_L\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(9),
	combout => \buff|DATALSIG[9]~feeder_combout\);

-- Location: FF_X35_Y1_N25
\buff|DATALSIG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(9));

-- Location: FF_X33_Y4_N44
\i2sin|DATA_L[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(10),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(10));

-- Location: LABCELL_X33_Y4_N12
\buff|DATALSIG[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[10]~feeder_combout\ = ( \i2sin|DATA_L\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(10),
	combout => \buff|DATALSIG[10]~feeder_combout\);

-- Location: FF_X33_Y4_N13
\buff|DATALSIG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(10));

-- Location: FF_X35_Y1_N44
\i2sin|DATA_L[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(11),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(11));

-- Location: LABCELL_X35_Y1_N51
\buff|DATALSIG[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[11]~feeder_combout\ = ( \i2sin|DATA_L\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(11),
	combout => \buff|DATALSIG[11]~feeder_combout\);

-- Location: FF_X35_Y1_N52
\buff|DATALSIG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(11));

-- Location: LABCELL_X36_Y4_N51
\i2sin|DATA_L[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[12]~feeder_combout\ = ( \i2sin|shift_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(12),
	combout => \i2sin|DATA_L[12]~feeder_combout\);

-- Location: FF_X36_Y4_N53
\i2sin|DATA_L[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(12));

-- Location: LABCELL_X36_Y4_N39
\buff|DATALSIG[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[12]~feeder_combout\ = ( \i2sin|DATA_L\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(12),
	combout => \buff|DATALSIG[12]~feeder_combout\);

-- Location: FF_X36_Y4_N41
\buff|DATALSIG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(12));

-- Location: FF_X36_Y3_N40
\i2sin|shift_reg[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|shift_reg[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[13]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N14
\i2sin|DATA_L[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[13]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(13));

-- Location: LABCELL_X36_Y4_N54
\buff|DATALSIG[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[13]~feeder_combout\ = ( \i2sin|DATA_L\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(13),
	combout => \buff|DATALSIG[13]~feeder_combout\);

-- Location: FF_X36_Y4_N56
\buff|DATALSIG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(13));

-- Location: FF_X36_Y4_N17
\i2sin|DATA_L[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(14));

-- Location: LABCELL_X36_Y4_N57
\buff|DATALSIG[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[14]~feeder_combout\ = ( \i2sin|DATA_L\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(14),
	combout => \buff|DATALSIG[14]~feeder_combout\);

-- Location: FF_X36_Y4_N59
\buff|DATALSIG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[14]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(14));

-- Location: LABCELL_X36_Y4_N48
\i2sin|DATA_L[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[15]~feeder_combout\ = \i2sin|shift_reg\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(15),
	combout => \i2sin|DATA_L[15]~feeder_combout\);

-- Location: FF_X36_Y4_N50
\i2sin|DATA_L[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(15));

-- Location: LABCELL_X36_Y4_N36
\buff|DATALSIG[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff|DATALSIG[15]~feeder_combout\ = ( \i2sin|DATA_L\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(15),
	combout => \buff|DATALSIG[15]~feeder_combout\);

-- Location: FF_X36_Y4_N38
\buff|DATALSIG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sin|ALT_INV_DATA_RDY_L~q\,
	d => \buff|DATALSIG[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff|DATALSIG\(15));

-- Location: DSP_X32_Y2_N0
\volume|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "1",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \volume|Mult1~8_ACLR_bus\,
	clk => \volume|Mult1~8_CLK_bus\,
	ena => \volume|Mult1~8_ENA_bus\,
	ax => \volume|Mult1~8_AX_bus\,
	ay => \volume|Mult1~8_AY_bus\,
	resulta => \volume|Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X33_Y3_N27
\buffmijnshitup|DATA_L_OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[8]~feeder_combout\ = ( \volume|scaled_music_L\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(8),
	combout => \buffmijnshitup|DATA_L_OUT[8]~feeder_combout\);

-- Location: FF_X33_Y3_N29
\buffmijnshitup|DATA_L_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(8));

-- Location: FF_X33_Y3_N5
\buffmijnshitup|DATA_L_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(9),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(9));

-- Location: LABCELL_X33_Y3_N51
\buffmijnshitup|DATA_L_OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[10]~feeder_combout\ = ( \volume|scaled_music_L\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(10),
	combout => \buffmijnshitup|DATA_L_OUT[10]~feeder_combout\);

-- Location: FF_X33_Y3_N52
\buffmijnshitup|DATA_L_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(10));

-- Location: LABCELL_X33_Y3_N24
\buffmijnshitup|DATA_L_OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[13]~feeder_combout\ = ( \volume|scaled_music_L\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(13),
	combout => \buffmijnshitup|DATA_L_OUT[13]~feeder_combout\);

-- Location: FF_X33_Y3_N26
\buffmijnshitup|DATA_L_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(13));

-- Location: LABCELL_X33_Y3_N12
\buffmijnshitup|DATA_L_OUT[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[12]~feeder_combout\ = ( \volume|scaled_music_L\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(12),
	combout => \buffmijnshitup|DATA_L_OUT[12]~feeder_combout\);

-- Location: FF_X33_Y3_N14
\buffmijnshitup|DATA_L_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(12));

-- Location: LABCELL_X33_Y3_N30
\buffmijnshitup|DATA_L_OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[14]~feeder_combout\ = ( \volume|scaled_music_L\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(14),
	combout => \buffmijnshitup|DATA_L_OUT[14]~feeder_combout\);

-- Location: FF_X33_Y3_N31
\buffmijnshitup|DATA_L_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[14]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(14));

-- Location: LABCELL_X33_Y3_N0
\buffmijnshitup|DATA_L_OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[15]~feeder_combout\ = ( \volume|scaled_music_L\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(15),
	combout => \buffmijnshitup|DATA_L_OUT[15]~feeder_combout\);

-- Location: FF_X33_Y3_N2
\buffmijnshitup|DATA_L_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(15));

-- Location: LABCELL_X33_Y3_N6
\tootherdac|Mux1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~18_combout\ = ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\tootherdac|counter\(2) & (\buffmijnshitup|DATA_L_OUT\(15)))) # (\tootherdac|counter\(0) & ((((\buffmijnshitup|DATA_L_OUT\(14)))) # (\tootherdac|counter\(2)))) ) ) 
-- # ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\tootherdac|counter\(2) & (\buffmijnshitup|DATA_L_OUT\(13)))) # (\tootherdac|counter\(0) & ((((\buffmijnshitup|DATA_L_OUT\(12)))) # (\tootherdac|counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(0),
	datab => \tootherdac|ALT_INV_counter\(2),
	datac => \buffmijnshitup|ALT_INV_DATA_L_OUT\(13),
	datad => \buffmijnshitup|ALT_INV_DATA_L_OUT\(12),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \buffmijnshitup|ALT_INV_DATA_L_OUT\(14),
	datag => \buffmijnshitup|ALT_INV_DATA_L_OUT\(15),
	combout => \tootherdac|Mux1~18_combout\);

-- Location: FF_X33_Y3_N43
\buffmijnshitup|DATA_L_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(11),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(11));

-- Location: LABCELL_X33_Y3_N36
\tootherdac|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~0_combout\ = ( !\tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~18_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~18_combout\ & (\buffmijnshitup|DATA_L_OUT\(11))) # (\tootherdac|Mux1~18_combout\ 
-- & ((\buffmijnshitup|DATA_L_OUT\(10))))))) ) ) # ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & ((((\tootherdac|Mux1~18_combout\))))) # (\tootherdac|counter\(2) & (((!\tootherdac|Mux1~18_combout\ & ((\buffmijnshitup|DATA_L_OUT\(9)))) # 
-- (\tootherdac|Mux1~18_combout\ & (\buffmijnshitup|DATA_L_OUT\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffmijnshitup|ALT_INV_DATA_L_OUT\(8),
	datab => \tootherdac|ALT_INV_counter\(2),
	datac => \buffmijnshitup|ALT_INV_DATA_L_OUT\(9),
	datad => \buffmijnshitup|ALT_INV_DATA_L_OUT\(10),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_Mux1~18_combout\,
	datag => \buffmijnshitup|ALT_INV_DATA_L_OUT\(11),
	combout => \tootherdac|Mux1~0_combout\);

-- Location: FF_X34_Y3_N43
\buffmijnshitup|DATA_R_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(2));

-- Location: MLABCELL_X34_Y3_N36
\buffmijnshitup|DATA_R_OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[0]~feeder_combout\ = ( \volume|scaled_music_R\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(0),
	combout => \buffmijnshitup|DATA_R_OUT[0]~feeder_combout\);

-- Location: FF_X34_Y3_N37
\buffmijnshitup|DATA_R_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(0));

-- Location: LABCELL_X33_Y3_N3
\buffmijnshitup|DATA_R_OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[1]~feeder_combout\ = ( \volume|scaled_music_R\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(1),
	combout => \buffmijnshitup|DATA_R_OUT[1]~feeder_combout\);

-- Location: FF_X33_Y3_N4
\buffmijnshitup|DATA_R_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(1));

-- Location: LABCELL_X33_Y3_N21
\buffmijnshitup|DATA_R_OUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_R_OUT[5]~feeder_combout\ = ( \volume|scaled_music_R\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(5),
	combout => \buffmijnshitup|DATA_R_OUT[5]~feeder_combout\);

-- Location: FF_X33_Y3_N22
\buffmijnshitup|DATA_R_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_R_OUT[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(5));

-- Location: FF_X34_Y3_N47
\buffmijnshitup|DATA_R_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(4));

-- Location: FF_X33_Y3_N16
\buffmijnshitup|DATA_R_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(6));

-- Location: FF_X34_Y3_N38
\buffmijnshitup|DATA_R_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(7),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(7));

-- Location: MLABCELL_X34_Y3_N30
\tootherdac|Mux1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~30_combout\ = ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\tootherdac|counter\(2) & (\buffmijnshitup|DATA_R_OUT\(7)))) # (\tootherdac|counter\(0) & ((((\buffmijnshitup|DATA_R_OUT\(6)))) # (\tootherdac|counter\(2)))) ) ) # 
-- ( \tootherdac|counter\(1) & ( (!\tootherdac|counter\(0) & (!\tootherdac|counter\(2) & (\buffmijnshitup|DATA_R_OUT\(5)))) # (\tootherdac|counter\(0) & ((((\buffmijnshitup|DATA_R_OUT\(4)))) # (\tootherdac|counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_counter\(0),
	datab => \tootherdac|ALT_INV_counter\(2),
	datac => \buffmijnshitup|ALT_INV_DATA_R_OUT\(5),
	datad => \buffmijnshitup|ALT_INV_DATA_R_OUT\(4),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \buffmijnshitup|ALT_INV_DATA_R_OUT\(6),
	datag => \buffmijnshitup|ALT_INV_DATA_R_OUT\(7),
	combout => \tootherdac|Mux1~30_combout\);

-- Location: FF_X33_Y3_N34
\buffmijnshitup|DATA_R_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_R\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_R_OUT\(3));

-- Location: MLABCELL_X34_Y3_N48
\tootherdac|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~12_combout\ = ( !\tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~30_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~30_combout\ & ((\buffmijnshitup|DATA_R_OUT\(3)))) # 
-- (\tootherdac|Mux1~30_combout\ & (\buffmijnshitup|DATA_R_OUT\(2)))))) ) ) # ( \tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~30_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~30_combout\ & 
-- ((\buffmijnshitup|DATA_R_OUT\(1)))) # (\tootherdac|Mux1~30_combout\ & (\buffmijnshitup|DATA_R_OUT\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffmijnshitup|ALT_INV_DATA_R_OUT\(2),
	datab => \buffmijnshitup|ALT_INV_DATA_R_OUT\(0),
	datac => \buffmijnshitup|ALT_INV_DATA_R_OUT\(1),
	datad => \tootherdac|ALT_INV_counter\(2),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_Mux1~30_combout\,
	datag => \buffmijnshitup|ALT_INV_DATA_R_OUT\(3),
	combout => \tootherdac|Mux1~12_combout\);

-- Location: FF_X33_Y3_N23
\buffmijnshitup|DATA_L_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(2));

-- Location: FF_X33_Y3_N7
\buffmijnshitup|DATA_L_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(1));

-- Location: LABCELL_X31_Y3_N12
\buffmijnshitup|DATA_L_OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[0]~feeder_combout\ = ( \volume|scaled_music_L\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(0),
	combout => \buffmijnshitup|DATA_L_OUT[0]~feeder_combout\);

-- Location: FF_X31_Y3_N13
\buffmijnshitup|DATA_L_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(0));

-- Location: FF_X33_Y3_N38
\buffmijnshitup|DATA_L_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(6));

-- Location: FF_X33_Y3_N56
\buffmijnshitup|DATA_L_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(5),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(5));

-- Location: LABCELL_X33_Y3_N18
\buffmijnshitup|DATA_L_OUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[4]~feeder_combout\ = ( \volume|scaled_music_L\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(4),
	combout => \buffmijnshitup|DATA_L_OUT[4]~feeder_combout\);

-- Location: FF_X33_Y3_N20
\buffmijnshitup|DATA_L_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(4));

-- Location: FF_X33_Y3_N50
\buffmijnshitup|DATA_L_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	asdata => \volume|scaled_music_L\(7),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(7));

-- Location: LABCELL_X33_Y3_N42
\tootherdac|Mux1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~22_combout\ = ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & ((!\tootherdac|counter\(0) & (((\buffmijnshitup|DATA_L_OUT\(7))))) # (\tootherdac|counter\(0) & (\buffmijnshitup|DATA_L_OUT\(6))))) # (\tootherdac|counter\(2) & 
-- ((((\tootherdac|counter\(0)))))) ) ) # ( \tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & ((!\tootherdac|counter\(0) & (\buffmijnshitup|DATA_L_OUT\(5))) # (\tootherdac|counter\(0) & ((\buffmijnshitup|DATA_L_OUT\(4)))))) # (\tootherdac|counter\(2) 
-- & (((\tootherdac|counter\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffmijnshitup|ALT_INV_DATA_L_OUT\(6),
	datab => \tootherdac|ALT_INV_counter\(2),
	datac => \buffmijnshitup|ALT_INV_DATA_L_OUT\(5),
	datad => \tootherdac|ALT_INV_counter\(0),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \buffmijnshitup|ALT_INV_DATA_L_OUT\(4),
	datag => \buffmijnshitup|ALT_INV_DATA_L_OUT\(7),
	combout => \tootherdac|Mux1~22_combout\);

-- Location: LABCELL_X33_Y3_N15
\buffmijnshitup|DATA_L_OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffmijnshitup|DATA_L_OUT[3]~feeder_combout\ = ( \volume|scaled_music_L\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(3),
	combout => \buffmijnshitup|DATA_L_OUT[3]~feeder_combout\);

-- Location: FF_X33_Y3_N17
\buffmijnshitup|DATA_L_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|s_lr_clk~q\,
	d => \buffmijnshitup|DATA_L_OUT[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffmijnshitup|DATA_L_OUT\(3));

-- Location: LABCELL_X33_Y3_N54
\tootherdac|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~4_combout\ = ( !\tootherdac|counter\(1) & ( (!\tootherdac|counter\(2) & ((((\tootherdac|Mux1~22_combout\))))) # (\tootherdac|counter\(2) & (((!\tootherdac|Mux1~22_combout\ & ((\buffmijnshitup|DATA_L_OUT\(3)))) # 
-- (\tootherdac|Mux1~22_combout\ & (\buffmijnshitup|DATA_L_OUT\(2)))))) ) ) # ( \tootherdac|counter\(1) & ( ((!\tootherdac|counter\(2) & (((\tootherdac|Mux1~22_combout\)))) # (\tootherdac|counter\(2) & ((!\tootherdac|Mux1~22_combout\ & 
-- (\buffmijnshitup|DATA_L_OUT\(1))) # (\tootherdac|Mux1~22_combout\ & ((\buffmijnshitup|DATA_L_OUT\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffmijnshitup|ALT_INV_DATA_L_OUT\(2),
	datab => \tootherdac|ALT_INV_counter\(2),
	datac => \buffmijnshitup|ALT_INV_DATA_L_OUT\(1),
	datad => \buffmijnshitup|ALT_INV_DATA_L_OUT\(0),
	datae => \tootherdac|ALT_INV_counter\(1),
	dataf => \tootherdac|ALT_INV_Mux1~22_combout\,
	datag => \buffmijnshitup|ALT_INV_DATA_L_OUT\(3),
	combout => \tootherdac|Mux1~4_combout\);

-- Location: MLABCELL_X34_Y3_N15
\tootherdac|Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~16_combout\ = ( \tootherdac|Mux1~12_combout\ & ( \tootherdac|Mux1~4_combout\ & ( ((!\tootherdac|s_current_lr~q\ & ((\tootherdac|Mux1~0_combout\))) # (\tootherdac|s_current_lr~q\ & (\tootherdac|Mux1~8_combout\))) # 
-- (\tootherdac|counter\(3)) ) ) ) # ( !\tootherdac|Mux1~12_combout\ & ( \tootherdac|Mux1~4_combout\ & ( (!\tootherdac|s_current_lr~q\ & (((\tootherdac|Mux1~0_combout\) # (\tootherdac|counter\(3))))) # (\tootherdac|s_current_lr~q\ & 
-- (\tootherdac|Mux1~8_combout\ & (!\tootherdac|counter\(3)))) ) ) ) # ( \tootherdac|Mux1~12_combout\ & ( !\tootherdac|Mux1~4_combout\ & ( (!\tootherdac|s_current_lr~q\ & (((!\tootherdac|counter\(3) & \tootherdac|Mux1~0_combout\)))) # 
-- (\tootherdac|s_current_lr~q\ & (((\tootherdac|counter\(3))) # (\tootherdac|Mux1~8_combout\))) ) ) ) # ( !\tootherdac|Mux1~12_combout\ & ( !\tootherdac|Mux1~4_combout\ & ( (!\tootherdac|counter\(3) & ((!\tootherdac|s_current_lr~q\ & 
-- ((\tootherdac|Mux1~0_combout\))) # (\tootherdac|s_current_lr~q\ & (\tootherdac|Mux1~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tootherdac|ALT_INV_Mux1~8_combout\,
	datab => \tootherdac|ALT_INV_s_current_lr~q\,
	datac => \tootherdac|ALT_INV_counter\(3),
	datad => \tootherdac|ALT_INV_Mux1~0_combout\,
	datae => \tootherdac|ALT_INV_Mux1~12_combout\,
	dataf => \tootherdac|ALT_INV_Mux1~4_combout\,
	combout => \tootherdac|Mux1~16_combout\);

-- Location: MLABCELL_X34_Y3_N18
\tootherdac|Mux1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tootherdac|Mux1~17_combout\ = ( \tootherdac|Mux1~16_combout\ & ( (!\tootherdac|counter\(3)) # ((!\tootherdac|DOUT~0_combout\) # (!\meinclock|s_lr_clk~q\ $ (\tootherdac|s_current_lr~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111011011111111111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \meinclock|ALT_INV_s_lr_clk~q\,
	datab => \tootherdac|ALT_INV_counter\(3),
	datac => \tootherdac|ALT_INV_s_current_lr~q\,
	datad => \tootherdac|ALT_INV_DOUT~0_combout\,
	dataf => \tootherdac|ALT_INV_Mux1~16_combout\,
	combout => \tootherdac|Mux1~17_combout\);

-- Location: FF_X34_Y3_N19
\tootherdac|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \meinclock|ALT_INV_s_bit_clk~q\,
	d => \tootherdac|Mux1~17_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tootherdac|DOUT~q\);

-- Location: LABCELL_X35_Y2_N39
\spi|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux6~0_combout\ = ( \spi|SDATA_register\(3) & ( (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) $ (!\spi|SDATA_register\(2)))) ) ) # ( !\spi|SDATA_register\(3) & ( (!\spi|SDATA_register\(1) & (!\spi|SDATA_register\(0) $ 
-- (!\spi|SDATA_register\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(2),
	dataf => \spi|ALT_INV_SDATA_register\(3),
	combout => \spi|Mux6~0_combout\);

-- Location: LABCELL_X35_Y2_N36
\spi|dig0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(0) = ( \CS~input_o\ & ( (\spi|Mux6~0_combout\ & \reset~input_o\) ) ) # ( !\CS~input_o\ & ( (\reset~input_o\ & \spi|dig0\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig0\(0),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig0\(0));

-- Location: LABCELL_X35_Y2_N27
\spi|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux5~0_combout\ = ( \spi|SDATA_register\(3) & ( (!\spi|SDATA_register\(0) & ((\spi|SDATA_register\(2)))) # (\spi|SDATA_register\(0) & (\spi|SDATA_register\(1))) ) ) # ( !\spi|SDATA_register\(3) & ( (\spi|SDATA_register\(2) & (!\spi|SDATA_register\(0) 
-- $ (!\spi|SDATA_register\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(2),
	dataf => \spi|ALT_INV_SDATA_register\(3),
	combout => \spi|Mux5~0_combout\);

-- Location: LABCELL_X35_Y2_N24
\spi|dig0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(1) = ( \spi|dig0\(1) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux5~0_combout\))) ) ) # ( !\spi|dig0\(1) & ( (\spi|Mux5~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(1),
	combout => \spi|dig0\(1));

-- Location: LABCELL_X35_Y2_N51
\spi|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux4~0_combout\ = ( \spi|SDATA_register\(2) & ( (\spi|SDATA_register\(3) & ((!\spi|SDATA_register\(0)) # (\spi|SDATA_register\(1)))) ) ) # ( !\spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(0) & (\spi|SDATA_register\(1) & 
-- !\spi|SDATA_register\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux4~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\spi|dig0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(2) = ( \spi|dig0\(2) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux4~0_combout\))) ) ) # ( !\spi|dig0\(2) & ( (\spi|Mux4~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(2),
	combout => \spi|dig0\(2));

-- Location: LABCELL_X35_Y2_N45
\spi|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux3~0_combout\ = ( \spi|SDATA_register\(3) & ( (\spi|SDATA_register\(1) & (!\spi|SDATA_register\(0) $ (\spi|SDATA_register\(2)))) ) ) # ( !\spi|SDATA_register\(3) & ( (!\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) & \spi|SDATA_register\(2))) 
-- # (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) $ (\spi|SDATA_register\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(2),
	dataf => \spi|ALT_INV_SDATA_register\(3),
	combout => \spi|Mux3~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\spi|dig0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(3) = ( \spi|dig0\(3) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux3~0_combout\))) ) ) # ( !\spi|dig0\(3) & ( (\spi|Mux3~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(3),
	combout => \spi|dig0\(3));

-- Location: LABCELL_X35_Y2_N54
\spi|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux2~0_combout\ = ( \spi|SDATA_register\(0) & ( (!\spi|SDATA_register\(3)) # ((!\spi|SDATA_register\(1) & !\spi|SDATA_register\(2))) ) ) # ( !\spi|SDATA_register\(0) & ( (!\spi|SDATA_register\(1) & (\spi|SDATA_register\(2) & 
-- !\spi|SDATA_register\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(1),
	datac => \spi|ALT_INV_SDATA_register\(2),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(0),
	combout => \spi|Mux2~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\spi|dig0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(4) = ( \spi|dig0\(4) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux2~0_combout\))) ) ) # ( !\spi|dig0\(4) & ( (\spi|Mux2~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(4),
	combout => \spi|dig0\(4));

-- Location: LABCELL_X35_Y2_N15
\spi|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux1~0_combout\ = (!\spi|SDATA_register\(0) & (\spi|SDATA_register\(1) & (!\spi|SDATA_register\(3) & !\spi|SDATA_register\(2)))) # (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(3) $ (((!\spi|SDATA_register\(1) & \spi|SDATA_register\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010100011100000001010001110000000101000111000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(0),
	datab => \spi|ALT_INV_SDATA_register\(1),
	datac => \spi|ALT_INV_SDATA_register\(3),
	datad => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux1~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\spi|dig0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(5) = (\reset~input_o\ & ((!\CS~input_o\ & ((\spi|dig0\(5)))) # (\CS~input_o\ & (\spi|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101100000001000010110000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CS~input_o\,
	datab => \spi|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig0\(5),
	combout => \spi|dig0\(5));

-- Location: LABCELL_X35_Y2_N18
\spi|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux0~0_combout\ = ( \spi|SDATA_register\(3) & ( ((!\spi|SDATA_register\(2)) # (\spi|SDATA_register\(0))) # (\spi|SDATA_register\(1)) ) ) # ( !\spi|SDATA_register\(3) & ( (!\spi|SDATA_register\(1) & (\spi|SDATA_register\(2))) # 
-- (\spi|SDATA_register\(1) & ((!\spi|SDATA_register\(2)) # (!\spi|SDATA_register\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(1),
	datac => \spi|ALT_INV_SDATA_register\(2),
	datad => \spi|ALT_INV_SDATA_register\(0),
	dataf => \spi|ALT_INV_SDATA_register\(3),
	combout => \spi|Mux0~0_combout\);

-- Location: LABCELL_X35_Y2_N21
\spi|dig0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(6) = ( \CS~input_o\ & ( (!\reset~input_o\) # (!\spi|Mux0~0_combout\) ) ) # ( !\CS~input_o\ & ( (!\reset~input_o\) # (\spi|dig0\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_Mux0~0_combout\,
	datad => \spi|ALT_INV_dig0\(6),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig0\(6));

-- Location: FF_X35_Y4_N56
\spi|SDATA_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	asdata => \spi|SDATA_register\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(7));

-- Location: LABCELL_X35_Y4_N6
\spi|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux13~0_combout\ = ( \spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) & (!\spi|SDATA_register\(5) $ (\spi|SDATA_register\(7)))) # (\spi|SDATA_register\(6) & (!\spi|SDATA_register\(5) & \spi|SDATA_register\(7))) ) ) # ( !\spi|SDATA_register\(4) & 
-- ( (\spi|SDATA_register\(6) & (!\spi|SDATA_register\(5) & !\spi|SDATA_register\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000100010000110011001000100000000001000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(6),
	datab => \spi|ALT_INV_SDATA_register\(5),
	datad => \spi|ALT_INV_SDATA_register\(7),
	datae => \spi|ALT_INV_SDATA_register\(4),
	combout => \spi|Mux13~0_combout\);

-- Location: LABCELL_X35_Y4_N42
\spi|dig1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(0) = ( \spi|dig1\(0) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux13~0_combout\))) ) ) # ( !\spi|dig1\(0) & ( (\spi|Mux13~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(0),
	combout => \spi|dig1\(0));

-- Location: LABCELL_X35_Y4_N51
\spi|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux12~0_combout\ = ( \spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(5) & (!\spi|SDATA_register\(7) $ (!\spi|SDATA_register\(4)))) # (\spi|SDATA_register\(5) & ((!\spi|SDATA_register\(4)) # (\spi|SDATA_register\(7)))) ) ) # ( 
-- !\spi|SDATA_register\(6) & ( (\spi|SDATA_register\(5) & (\spi|SDATA_register\(7) & \spi|SDATA_register\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(7),
	datad => \spi|ALT_INV_SDATA_register\(4),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux12~0_combout\);

-- Location: LABCELL_X35_Y4_N57
\spi|dig1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(1) = ( \spi|dig1\(1) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux12~0_combout\))) ) ) # ( !\spi|dig1\(1) & ( (\spi|Mux12~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000000000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	datae => \spi|ALT_INV_dig1\(1),
	combout => \spi|dig1\(1));

-- Location: LABCELL_X35_Y4_N24
\spi|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux11~0_combout\ = ( \spi|SDATA_register\(6) & ( (\spi|SDATA_register\(7) & ((!\spi|SDATA_register\(4)) # (\spi|SDATA_register\(5)))) ) ) # ( !\spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(7) & (\spi|SDATA_register\(5) & 
-- !\spi|SDATA_register\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(7),
	datac => \spi|ALT_INV_SDATA_register\(5),
	datad => \spi|ALT_INV_SDATA_register\(4),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux11~0_combout\);

-- Location: LABCELL_X35_Y4_N3
\spi|dig1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(2) = ( \spi|dig1\(2) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux11~0_combout\))) ) ) # ( !\spi|dig1\(2) & ( (\spi|Mux11~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000000000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	datae => \spi|ALT_INV_dig1\(2),
	combout => \spi|dig1\(2));

-- Location: LABCELL_X35_Y4_N18
\spi|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux10~0_combout\ = ( \spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) & (!\spi|SDATA_register\(5) & !\spi|SDATA_register\(7))) # (\spi|SDATA_register\(6) & (\spi|SDATA_register\(5))) ) ) # ( !\spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) 
-- & (\spi|SDATA_register\(5) & \spi|SDATA_register\(7))) # (\spi|SDATA_register\(6) & (!\spi|SDATA_register\(5) & !\spi|SDATA_register\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010100110010001000101000100001000101001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(6),
	datab => \spi|ALT_INV_SDATA_register\(5),
	datad => \spi|ALT_INV_SDATA_register\(7),
	datae => \spi|ALT_INV_SDATA_register\(4),
	combout => \spi|Mux10~0_combout\);

-- Location: LABCELL_X35_Y4_N36
\spi|dig1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(3) = ( \CS~input_o\ & ( (\spi|Mux10~0_combout\ & \reset~input_o\) ) ) # ( !\CS~input_o\ & ( (\reset~input_o\ & \spi|dig1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig1\(3),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig1\(3));

-- Location: LABCELL_X35_Y4_N48
\spi|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux9~0_combout\ = ( \spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(7) & ((!\spi|SDATA_register\(5)) # (\spi|SDATA_register\(4)))) ) ) # ( !\spi|SDATA_register\(6) & ( (\spi|SDATA_register\(4) & ((!\spi|SDATA_register\(7)) # 
-- (!\spi|SDATA_register\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(7),
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(4),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux9~0_combout\);

-- Location: LABCELL_X35_Y4_N30
\spi|dig1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(4) = ( \CS~input_o\ & ( \spi|dig1\(4) & ( (\spi|Mux9~0_combout\ & \reset~input_o\) ) ) ) # ( !\CS~input_o\ & ( \spi|dig1\(4) & ( \reset~input_o\ ) ) ) # ( \CS~input_o\ & ( !\spi|dig1\(4) & ( (\spi|Mux9~0_combout\ & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(4),
	combout => \spi|dig1\(4));

-- Location: LABCELL_X35_Y4_N39
\spi|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux8~0_combout\ = ( \spi|SDATA_register\(6) & ( (\spi|SDATA_register\(4) & (!\spi|SDATA_register\(5) $ (!\spi|SDATA_register\(7)))) ) ) # ( !\spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(7) & ((\spi|SDATA_register\(4)) # 
-- (\spi|SDATA_register\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(7),
	datad => \spi|ALT_INV_SDATA_register\(4),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux8~0_combout\);

-- Location: LABCELL_X35_Y4_N12
\spi|dig1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(5) = ( \CS~input_o\ & ( \spi|dig1\(5) & ( (\spi|Mux8~0_combout\ & \reset~input_o\) ) ) ) # ( !\CS~input_o\ & ( \spi|dig1\(5) & ( \reset~input_o\ ) ) ) # ( \CS~input_o\ & ( !\spi|dig1\(5) & ( (\spi|Mux8~0_combout\ & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(5),
	combout => \spi|dig1\(5));

-- Location: LABCELL_X35_Y4_N45
\spi|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux7~0_combout\ = ( \spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) $ (!\spi|SDATA_register\(5))) # (\spi|SDATA_register\(7)) ) ) # ( !\spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) $ (!\spi|SDATA_register\(7))) # 
-- (\spi|SDATA_register\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110101111010111111010111101011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(6),
	datac => \spi|ALT_INV_SDATA_register\(5),
	datad => \spi|ALT_INV_SDATA_register\(7),
	dataf => \spi|ALT_INV_SDATA_register\(4),
	combout => \spi|Mux7~0_combout\);

-- Location: LABCELL_X35_Y4_N27
\spi|dig1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(6) = ( \CS~input_o\ & ( (!\spi|Mux7~0_combout\) # (!\reset~input_o\) ) ) # ( !\CS~input_o\ & ( (!\reset~input_o\) # (\spi|dig1\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig1\(6),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig1\(6));

-- Location: IOIBUF_X24_Y81_N1
\AUD_DACLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: FF_X31_Y2_N47
\audioout|dack0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \AUD_DACLRCK~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|dack0~q\);

-- Location: FF_X31_Y1_N22
\audioout|dack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|dack0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|dack1~q\);

-- Location: LABCELL_X31_Y1_N39
\audioout|DACData_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|DACData_reg~0_combout\ = ( !\audioout|dack1~q\ & ( \audioout|dack0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	dataf => \audioout|ALT_INV_dack1~q\,
	combout => \audioout|DACData_reg~0_combout\);

-- Location: FF_X31_Y3_N5
\audioout|LRDATA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(13),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(29));

-- Location: FF_X31_Y3_N43
\audioout|LRDATA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(15),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(31));

-- Location: FF_X31_Y3_N31
\audioout|LRDATA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(12),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(28));

-- Location: LABCELL_X31_Y1_N36
\audioout|Bcount~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~5_combout\ = ( \audioout|dack1~q\ & ( !\audioout|Bcount\(0) ) ) # ( !\audioout|dack1~q\ & ( (!\audioout|dack0~q\ & !\audioout|Bcount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datad => \audioout|ALT_INV_Bcount\(0),
	dataf => \audioout|ALT_INV_dack1~q\,
	combout => \audioout|Bcount~5_combout\);

-- Location: IOIBUF_X16_Y81_N18
\AUD_BCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: FF_X22_Y23_N53
\audioout|bck0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \AUD_BCLK~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|bck0~q\);

-- Location: FF_X31_Y1_N20
\audioout|bck1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|bck0~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|bck1~q\);

-- Location: LABCELL_X31_Y1_N18
\audioout|Bcount[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount[0]~1_combout\ = ( \audioout|bck0~q\ & ( \audioout|bck1~q\ & ( (!\audioout|dack1~q\ & \audioout|dack0~q\) ) ) ) # ( !\audioout|bck0~q\ & ( \audioout|bck1~q\ ) ) # ( \audioout|bck0~q\ & ( !\audioout|bck1~q\ & ( (!\audioout|dack1~q\ & 
-- \audioout|dack0~q\) ) ) ) # ( !\audioout|bck0~q\ & ( !\audioout|bck1~q\ & ( (!\audioout|dack1~q\ & \audioout|dack0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111111111111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_dack1~q\,
	datac => \audioout|ALT_INV_dack0~q\,
	datae => \audioout|ALT_INV_bck0~q\,
	dataf => \audioout|ALT_INV_bck1~q\,
	combout => \audioout|Bcount[0]~1_combout\);

-- Location: FF_X31_Y1_N38
\audioout|Bcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~5_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(0));

-- Location: LABCELL_X31_Y3_N30
\audioout|LRDATA[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[27]~feeder_combout\ = ( \volume|scaled_music_L\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(11),
	combout => \audioout|LRDATA[27]~feeder_combout\);

-- Location: FF_X31_Y3_N32
\audioout|LRDATA[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[27]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(27));

-- Location: FF_X31_Y3_N35
\audioout|LRDATA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(24));

-- Location: LABCELL_X31_Y3_N33
\audioout|LRDATA[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[25]~feeder_combout\ = ( \volume|scaled_music_L\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(9),
	combout => \audioout|LRDATA[25]~feeder_combout\);

-- Location: FF_X31_Y3_N34
\audioout|LRDATA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[25]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(25));

-- Location: LABCELL_X31_Y1_N15
\audioout|Bcount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~4_combout\ = ( \audioout|Bcount\(0) & ( (!\audioout|Bcount\(1) & ((!\audioout|dack0~q\) # (\audioout|dack1~q\))) ) ) # ( !\audioout|Bcount\(0) & ( (\audioout|Bcount\(1) & ((!\audioout|dack0~q\) # (\audioout|dack1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111110101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datac => \audioout|ALT_INV_dack1~q\,
	datad => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(0),
	combout => \audioout|Bcount~4_combout\);

-- Location: FF_X31_Y1_N16
\audioout|Bcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(1));

-- Location: LABCELL_X31_Y1_N12
\audioout|Bcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~3_combout\ = ( \audioout|Bcount\(1) & ( (!\audioout|dack0~q\ & ((!\audioout|Bcount\(0) $ (!\audioout|Bcount\(2))))) # (\audioout|dack0~q\ & (\audioout|dack1~q\ & (!\audioout|Bcount\(0) $ (!\audioout|Bcount\(2))))) ) ) # ( 
-- !\audioout|Bcount\(1) & ( (\audioout|Bcount\(2) & ((!\audioout|dack0~q\) # (\audioout|dack1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100001011101100000000101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datab => \audioout|ALT_INV_dack1~q\,
	datac => \audioout|ALT_INV_Bcount\(0),
	datad => \audioout|ALT_INV_Bcount\(2),
	dataf => \audioout|ALT_INV_Bcount\(1),
	combout => \audioout|Bcount~3_combout\);

-- Location: FF_X31_Y1_N14
\audioout|Bcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(2));

-- Location: FF_X31_Y3_N7
\audioout|LRDATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(10),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(26));

-- Location: LABCELL_X31_Y3_N6
\audioout|Mux13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~29_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(27)))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(26) & ((\audioout|Bcount\(2))))))) ) ) # ( \audioout|Bcount\(1) & ( 
-- (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(25)))))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(24) & ((\audioout|Bcount\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101010101010101010101010101000100111001001110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(0),
	datab => \audioout|ALT_INV_LRDATA\(27),
	datac => \audioout|ALT_INV_LRDATA\(24),
	datad => \audioout|ALT_INV_LRDATA\(25),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(26),
	combout => \audioout|Mux13~29_combout\);

-- Location: FF_X31_Y3_N55
\audioout|LRDATA[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(30));

-- Location: LABCELL_X31_Y3_N54
\audioout|Mux13~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~12_combout\ = ( !\audioout|Bcount\(1) & ( ((!\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(30) & !\audioout|Bcount\(2))))) # (\audioout|Mux13~29_combout\ & (((\audioout|Bcount\(2))) # (\audioout|LRDATA\(31))))) ) ) # ( 
-- \audioout|Bcount\(1) & ( ((!\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(28) & !\audioout|Bcount\(2))))) # (\audioout|Mux13~29_combout\ & (((\audioout|Bcount\(2))) # (\audioout|LRDATA\(29))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(29),
	datab => \audioout|ALT_INV_LRDATA\(31),
	datac => \audioout|ALT_INV_LRDATA\(28),
	datad => \audioout|ALT_INV_Mux13~29_combout\,
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(30),
	combout => \audioout|Mux13~12_combout\);

-- Location: FF_X31_Y1_N8
\audioout|Bcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(3));

-- Location: LABCELL_X31_Y1_N6
\audioout|Bcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~0_combout\ = ( \audioout|Bcount\(3) & ( \audioout|Bcount\(1) & ( (!\audioout|dack0~q\ & (((!\audioout|Bcount\(0)) # (!\audioout|Bcount\(2))))) # (\audioout|dack0~q\ & (\audioout|dack1~q\ & ((!\audioout|Bcount\(0)) # 
-- (!\audioout|Bcount\(2))))) ) ) ) # ( !\audioout|Bcount\(3) & ( \audioout|Bcount\(1) & ( (\audioout|Bcount\(0) & (\audioout|Bcount\(2) & ((!\audioout|dack0~q\) # (\audioout|dack1~q\)))) ) ) ) # ( \audioout|Bcount\(3) & ( !\audioout|Bcount\(1) & ( 
-- (!\audioout|dack0~q\) # (\audioout|dack1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111011101100000000000010111011101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datab => \audioout|ALT_INV_dack1~q\,
	datac => \audioout|ALT_INV_Bcount\(0),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(3),
	dataf => \audioout|ALT_INV_Bcount\(1),
	combout => \audioout|Bcount~0_combout\);

-- Location: FF_X31_Y1_N7
\audioout|Bcount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N24
\audioout|Bcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~2_combout\ = ( \audioout|Bcount\(4) & ( \audioout|Bcount\(1) & ( (!\audioout|DACData_reg~0_combout\ & ((!\audioout|Bcount\(2)) # ((!\audioout|Bcount\(0)) # (!\audioout|Bcount\(3))))) ) ) ) # ( !\audioout|Bcount\(4) & ( 
-- \audioout|Bcount\(1) & ( (!\audioout|DACData_reg~0_combout\ & (\audioout|Bcount\(2) & (\audioout|Bcount\(0) & \audioout|Bcount\(3)))) ) ) ) # ( \audioout|Bcount\(4) & ( !\audioout|Bcount\(1) & ( !\audioout|DACData_reg~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_DACData_reg~0_combout\,
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_Bcount\(0),
	datad => \audioout|ALT_INV_Bcount\(3),
	datae => \audioout|ALT_INV_Bcount\(4),
	dataf => \audioout|ALT_INV_Bcount\(1),
	combout => \audioout|Bcount~2_combout\);

-- Location: FF_X31_Y1_N25
\audioout|Bcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(4));

-- Location: FF_X31_Y1_N49
\audioout|LRDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(3));

-- Location: FF_X31_Y1_N59
\audioout|LRDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(0));

-- Location: FF_X31_Y1_N32
\audioout|LRDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(1));

-- Location: LABCELL_X31_Y1_N54
\audioout|LRDATA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[2]~feeder_combout\ = ( \volume|scaled_music_R\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(2),
	combout => \audioout|LRDATA[2]~feeder_combout\);

-- Location: FF_X31_Y1_N55
\audioout|LRDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(2));

-- Location: LABCELL_X31_Y1_N48
\audioout|Mux13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~17_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(3)))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(2) & ((\audioout|Bcount\(2))))))) ) ) # ( \audioout|Bcount\(1) & ( 
-- (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(1)))))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(0) & ((\audioout|Bcount\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101010101010101010101010101000100111001001110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(0),
	datab => \audioout|ALT_INV_LRDATA\(3),
	datac => \audioout|ALT_INV_LRDATA\(0),
	datad => \audioout|ALT_INV_LRDATA\(1),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(2),
	combout => \audioout|Mux13~17_combout\);

-- Location: FF_X31_Y1_N47
\audioout|LRDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(7),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(7));

-- Location: LABCELL_X31_Y1_N42
\audioout|LRDATA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[4]~feeder_combout\ = ( \volume|scaled_music_R\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(4),
	combout => \audioout|LRDATA[4]~feeder_combout\);

-- Location: FF_X31_Y1_N44
\audioout|LRDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(4));

-- Location: LABCELL_X33_Y1_N15
\audioout|LRDATA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[5]~feeder_combout\ = ( \volume|scaled_music_R\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(5),
	combout => \audioout|LRDATA[5]~feeder_combout\);

-- Location: FF_X33_Y1_N16
\audioout|LRDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(5));

-- Location: FF_X31_Y1_N1
\audioout|LRDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(6));

-- Location: LABCELL_X31_Y1_N0
\audioout|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~0_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Mux13~17_combout\ & (((\audioout|LRDATA\(6) & (!\audioout|Bcount\(2)))))) # (\audioout|Mux13~17_combout\ & ((((\audioout|Bcount\(2)))) # (\audioout|LRDATA\(7)))) ) ) # ( 
-- \audioout|Bcount\(1) & ( (!\audioout|Mux13~17_combout\ & (((\audioout|LRDATA\(4) & (!\audioout|Bcount\(2)))))) # (\audioout|Mux13~17_combout\ & ((((\audioout|LRDATA\(5)) # (\audioout|Bcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~17_combout\,
	datab => \audioout|ALT_INV_LRDATA\(7),
	datac => \audioout|ALT_INV_LRDATA\(4),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(5),
	datag => \audioout|ALT_INV_LRDATA\(6),
	combout => \audioout|Mux13~0_combout\);

-- Location: LABCELL_X31_Y3_N3
\audioout|LRDATA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[9]~feeder_combout\ = \volume|scaled_music_R\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \volume|ALT_INV_scaled_music_R\(9),
	combout => \audioout|LRDATA[9]~feeder_combout\);

-- Location: FF_X31_Y3_N4
\audioout|LRDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(9));

-- Location: FF_X31_Y3_N52
\audioout|LRDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(8));

-- Location: FF_X31_Y1_N37
\audioout|Bcount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~5_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount[0]~DUPLICATE_q\);

-- Location: FF_X31_Y4_N41
\audioout|LRDATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(11),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(11));

-- Location: FF_X31_Y4_N59
\audioout|LRDATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(10),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(10));

-- Location: LABCELL_X31_Y4_N57
\audioout|Mux13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~21_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(2) & ((((!\audioout|Bcount[0]~DUPLICATE_q\))))) # (\audioout|Bcount\(2) & (((!\audioout|Bcount[0]~DUPLICATE_q\ & ((\audioout|LRDATA\(11)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & 
-- (\audioout|LRDATA\(10)))))) ) ) # ( \audioout|Bcount\(1) & ( (!\audioout|Bcount\(2) & ((((!\audioout|Bcount[0]~DUPLICATE_q\))))) # (\audioout|Bcount\(2) & ((!\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(9))) # (\audioout|Bcount[0]~DUPLICATE_q\ & 
-- (((\audioout|LRDATA\(8))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101000000101101110110000010111111111000001011011101100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(2),
	datab => \audioout|ALT_INV_LRDATA\(9),
	datac => \audioout|ALT_INV_LRDATA\(8),
	datad => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(11),
	datag => \audioout|ALT_INV_LRDATA\(10),
	combout => \audioout|Mux13~21_combout\);

-- Location: LABCELL_X31_Y3_N45
\audioout|LRDATA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[15]~feeder_combout\ = ( \volume|scaled_music_R\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(15),
	combout => \audioout|LRDATA[15]~feeder_combout\);

-- Location: FF_X31_Y3_N47
\audioout|LRDATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[15]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(15));

-- Location: FF_X31_Y3_N50
\audioout|LRDATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(12),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(12));

-- Location: LABCELL_X31_Y3_N42
\audioout|LRDATA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[13]~feeder_combout\ = ( \volume|scaled_music_R\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_R\(13),
	combout => \audioout|LRDATA[13]~feeder_combout\);

-- Location: FF_X31_Y3_N44
\audioout|LRDATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[13]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(13));

-- Location: FF_X31_Y3_N37
\audioout|LRDATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_R\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(14));

-- Location: LABCELL_X31_Y3_N36
\audioout|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~4_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Mux13~21_combout\ & (((\audioout|LRDATA\(14) & ((!\audioout|Bcount\(2))))))) # (\audioout|Mux13~21_combout\ & ((((\audioout|Bcount\(2)))) # (\audioout|LRDATA\(15)))) ) ) # ( 
-- \audioout|Bcount\(1) & ( (!\audioout|Mux13~21_combout\ & (((\audioout|LRDATA\(12) & ((!\audioout|Bcount\(2))))))) # (\audioout|Mux13~21_combout\ & ((((\audioout|Bcount\(2)) # (\audioout|LRDATA\(13)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~21_combout\,
	datab => \audioout|ALT_INV_LRDATA\(15),
	datac => \audioout|ALT_INV_LRDATA\(12),
	datad => \audioout|ALT_INV_LRDATA\(13),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(14),
	combout => \audioout|Mux13~4_combout\);

-- Location: LABCELL_X31_Y1_N57
\audioout|LRDATA[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[23]~feeder_combout\ = ( \volume|scaled_music_L\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(7),
	combout => \audioout|LRDATA[23]~feeder_combout\);

-- Location: FF_X31_Y1_N58
\audioout|LRDATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[23]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(23));

-- Location: LABCELL_X31_Y1_N45
\audioout|LRDATA[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[20]~feeder_combout\ = ( \volume|scaled_music_L\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(4),
	combout => \audioout|LRDATA[20]~feeder_combout\);

-- Location: FF_X31_Y1_N46
\audioout|LRDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[20]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(20));

-- Location: FF_X31_Y1_N43
\audioout|LRDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(5),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(21));

-- Location: LABCELL_X31_Y3_N0
\audioout|LRDATA[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[19]~feeder_combout\ = \volume|scaled_music_L\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \volume|ALT_INV_scaled_music_L\(3),
	combout => \audioout|LRDATA[19]~feeder_combout\);

-- Location: FF_X31_Y3_N1
\audioout|LRDATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[19]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(19));

-- Location: LABCELL_X31_Y3_N21
\audioout|LRDATA[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[16]~feeder_combout\ = ( \volume|scaled_music_L\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(0),
	combout => \audioout|LRDATA[16]~feeder_combout\);

-- Location: FF_X31_Y3_N23
\audioout|LRDATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[16]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(16));

-- Location: LABCELL_X31_Y3_N18
\audioout|LRDATA[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[17]~feeder_combout\ = ( \volume|scaled_music_L\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(1),
	combout => \audioout|LRDATA[17]~feeder_combout\);

-- Location: FF_X31_Y3_N20
\audioout|LRDATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[17]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(17));

-- Location: FF_X31_Y3_N28
\audioout|LRDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \volume|scaled_music_L\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(18));

-- Location: LABCELL_X31_Y3_N27
\audioout|Mux13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~25_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(19)))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(18) & (\audioout|Bcount\(2)))))) ) ) # ( \audioout|Bcount\(1) & ( 
-- (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(17)))))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(16) & (\audioout|Bcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101000100111101010100000010110101010001001111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(0),
	datab => \audioout|ALT_INV_LRDATA\(19),
	datac => \audioout|ALT_INV_LRDATA\(16),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(17),
	datag => \audioout|ALT_INV_LRDATA\(18),
	combout => \audioout|Mux13~25_combout\);

-- Location: LABCELL_X33_Y1_N30
\audioout|LRDATA[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[22]~feeder_combout\ = ( \volume|scaled_music_L\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \volume|ALT_INV_scaled_music_L\(6),
	combout => \audioout|LRDATA[22]~feeder_combout\);

-- Location: FF_X33_Y1_N31
\audioout|LRDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[22]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(22));

-- Location: LABCELL_X31_Y1_N30
\audioout|Mux13~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~8_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(2) & (((!\audioout|Mux13~25_combout\ & ((\audioout|LRDATA\(22)))) # (\audioout|Mux13~25_combout\ & (\audioout|LRDATA\(23)))))) # (\audioout|Bcount\(2) & 
-- ((((\audioout|Mux13~25_combout\))))) ) ) # ( \audioout|Bcount\(1) & ( ((!\audioout|Bcount\(2) & ((!\audioout|Mux13~25_combout\ & (\audioout|LRDATA\(20))) # (\audioout|Mux13~25_combout\ & ((\audioout|LRDATA\(21)))))) # (\audioout|Bcount\(2) & 
-- (((\audioout|Mux13~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(23),
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_LRDATA\(20),
	datad => \audioout|ALT_INV_LRDATA\(21),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Mux13~25_combout\,
	datag => \audioout|ALT_INV_LRDATA\(22),
	combout => \audioout|Mux13~8_combout\);

-- Location: LABCELL_X31_Y3_N51
\audioout|Mux13~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~16_combout\ = ( \audioout|Mux13~4_combout\ & ( \audioout|Mux13~8_combout\ & ( (!\audioout|Bcount[3]~DUPLICATE_q\ & (((\audioout|Bcount\(4))) # (\audioout|Mux13~12_combout\))) # (\audioout|Bcount[3]~DUPLICATE_q\ & (((!\audioout|Bcount\(4)) 
-- # (\audioout|Mux13~0_combout\)))) ) ) ) # ( !\audioout|Mux13~4_combout\ & ( \audioout|Mux13~8_combout\ & ( (!\audioout|Bcount[3]~DUPLICATE_q\ & (\audioout|Mux13~12_combout\ & (!\audioout|Bcount\(4)))) # (\audioout|Bcount[3]~DUPLICATE_q\ & 
-- (((!\audioout|Bcount\(4)) # (\audioout|Mux13~0_combout\)))) ) ) ) # ( \audioout|Mux13~4_combout\ & ( !\audioout|Mux13~8_combout\ & ( (!\audioout|Bcount[3]~DUPLICATE_q\ & (((\audioout|Bcount\(4))) # (\audioout|Mux13~12_combout\))) # 
-- (\audioout|Bcount[3]~DUPLICATE_q\ & (((\audioout|Bcount\(4) & \audioout|Mux13~0_combout\)))) ) ) ) # ( !\audioout|Mux13~4_combout\ & ( !\audioout|Mux13~8_combout\ & ( (!\audioout|Bcount[3]~DUPLICATE_q\ & (\audioout|Mux13~12_combout\ & 
-- (!\audioout|Bcount\(4)))) # (\audioout|Bcount[3]~DUPLICATE_q\ & (((\audioout|Bcount\(4) & \audioout|Mux13~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~12_combout\,
	datab => \audioout|ALT_INV_Bcount[3]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_Bcount\(4),
	datad => \audioout|ALT_INV_Mux13~0_combout\,
	datae => \audioout|ALT_INV_Mux13~4_combout\,
	dataf => \audioout|ALT_INV_Mux13~8_combout\,
	combout => \audioout|Mux13~16_combout\);

-- Location: LABCELL_X17_Y14_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


