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

-- DATE "04/05/2018 16:19:54"

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
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDATA	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \audioout|sck0~q\ : std_logic;
SIGNAL \audioout|sck1~q\ : std_logic;
SIGNAL \audioout|next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|Mux10~0_combout\ : std_logic;
SIGNAL \audioout|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audioout|state.b_end~q\ : std_logic;
SIGNAL \audioout|word_counter~0_combout\ : std_logic;
SIGNAL \audioout|Mux1~0_combout\ : std_logic;
SIGNAL \audioout|word_count[3]~0_combout\ : std_logic;
SIGNAL \audioout|Equal0~0_combout\ : std_logic;
SIGNAL \audioout|Selector0~0_combout\ : std_logic;
SIGNAL \audioout|state.initialize~q\ : std_logic;
SIGNAL \audioout|Selector1~0_combout\ : std_logic;
SIGNAL \audioout|state.start~q\ : std_logic;
SIGNAL \audioout|state.b0~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b0~q\ : std_logic;
SIGNAL \audioout|state.b1~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b1~q\ : std_logic;
SIGNAL \audioout|state.b2~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b2~q\ : std_logic;
SIGNAL \audioout|state.b3~q\ : std_logic;
SIGNAL \audioout|state.b4~q\ : std_logic;
SIGNAL \audioout|state.b5~q\ : std_logic;
SIGNAL \audioout|state.b6~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b6~q\ : std_logic;
SIGNAL \audioout|state.b7~q\ : std_logic;
SIGNAL \audioout|state.b_ack~q\ : std_logic;
SIGNAL \audioout|state.a0~feeder_combout\ : std_logic;
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
SIGNAL \audioout|state.d7~q\ : std_logic;
SIGNAL \audioout|state.d_ack~q\ : std_logic;
SIGNAL \audioout|Selector29~0_combout\ : std_logic;
SIGNAL \audioout|state.b_stop0~q\ : std_logic;
SIGNAL \audioout|next_state.b_stop1~0_combout\ : std_logic;
SIGNAL \audioout|state.b_stop1~q\ : std_logic;
SIGNAL \clockgen|s_counter_bit[0]~0_combout\ : std_logic;
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
SIGNAL \audioout|i2c_counter[9]~feeder_combout\ : std_logic;
SIGNAL \audioout|I2C_SCLK~combout\ : std_logic;
SIGNAL \audioout|word_count[0]~1_combout\ : std_logic;
SIGNAL \audioout|state.a5~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Selector30~2_combout\ : std_logic;
SIGNAL \audioout|Selector30~7_combout\ : std_logic;
SIGNAL \audioout|state.d7~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Selector30~8_combout\ : std_logic;
SIGNAL \audioout|Selector30~10_combout\ : std_logic;
SIGNAL \audioout|state.d2~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Selector30~0_combout\ : std_logic;
SIGNAL \audioout|Selector30~1_combout\ : std_logic;
SIGNAL \audioout|Selector30~5_combout\ : std_logic;
SIGNAL \audioout|Selector30~4_combout\ : std_logic;
SIGNAL \audioout|Selector30~3_combout\ : std_logic;
SIGNAL \audioout|Selector30~6_combout\ : std_logic;
SIGNAL \audioout|Selector30~9_combout\ : std_logic;
SIGNAL \audioout|state.b_ack~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|WideOr32~combout\ : std_logic;
SIGNAL \clockgen|s_bit_clk~0_combout\ : std_logic;
SIGNAL \clockgen|s_bit_clk~feeder_combout\ : std_logic;
SIGNAL \clockgen|s_bit_clk~q\ : std_logic;
SIGNAL \clockgen|v_lr_clk_enable~0_combout\ : std_logic;
SIGNAL \clockgen|s_counter_lr[0]~4_combout\ : std_logic;
SIGNAL \clockgen|s_counter_lr[1]~3_combout\ : std_logic;
SIGNAL \clockgen|s_counter_lr[2]~2_combout\ : std_logic;
SIGNAL \clockgen|s_counter_lr[3]~1_combout\ : std_logic;
SIGNAL \clockgen|s_counter_lr~0_combout\ : std_logic;
SIGNAL \clockgen|s_lr_clk~0_combout\ : std_logic;
SIGNAL \clockgen|s_lr_clk~1_combout\ : std_logic;
SIGNAL \clockgen|s_lr_clk~q\ : std_logic;
SIGNAL \i2out|s_current_lr~0_combout\ : std_logic;
SIGNAL \i2out|s_current_lr~q\ : std_logic;
SIGNAL \i2out|counter[0]~3_combout\ : std_logic;
SIGNAL \i2out|counter[1]~2_combout\ : std_logic;
SIGNAL \i2out|counter[2]~1_combout\ : std_logic;
SIGNAL \i2out|counter[3]~0_combout\ : std_logic;
SIGNAL \i2out|DOUT~0_combout\ : std_logic;
SIGNAL \BIT_CLK~input_o\ : std_logic;
SIGNAL \BIT_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \i2sin|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \LR_CLK~input_o\ : std_logic;
SIGNAL \i2sin|s_current_lr~q\ : std_logic;
SIGNAL \i2sin|i2s_in~0_combout\ : std_logic;
SIGNAL \i2sin|s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|DATA_R[15]~0_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|DATA_R[2]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|DATA_R[7]~feeder_combout\ : std_logic;
SIGNAL \i2out|Mux1~30_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[3]~feeder_combout\ : std_logic;
SIGNAL \i2out|Mux1~12_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[13]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[14]~DUPLICATE_q\ : std_logic;
SIGNAL \i2out|Mux1~26_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[11]~feeder_combout\ : std_logic;
SIGNAL \i2out|Mux1~8_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[15]~0_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[12]~feeder_combout\ : std_logic;
SIGNAL \i2out|Mux1~18_combout\ : std_logic;
SIGNAL \i2out|Mux1~0_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[1]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[2]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[6]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[7]~feeder_combout\ : std_logic;
SIGNAL \i2out|Mux1~22_combout\ : std_logic;
SIGNAL \i2out|Mux1~4_combout\ : std_logic;
SIGNAL \i2out|Mux1~16_combout\ : std_logic;
SIGNAL \i2out|Mux1~17_combout\ : std_logic;
SIGNAL \i2out|DOUT~q\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SDATA~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \spi|SDATA_register[1]~feeder_combout\ : std_logic;
SIGNAL \spi|SDATA_register[3]~feeder_combout\ : std_logic;
SIGNAL \spi|Mux6~0_combout\ : std_logic;
SIGNAL \spi|Mux5~0_combout\ : std_logic;
SIGNAL \spi|Mux4~0_combout\ : std_logic;
SIGNAL \spi|Mux3~0_combout\ : std_logic;
SIGNAL \spi|Mux2~0_combout\ : std_logic;
SIGNAL \spi|Mux1~0_combout\ : std_logic;
SIGNAL \spi|Mux0~0_combout\ : std_logic;
SIGNAL \spi|SDATA_register[5]~feeder_combout\ : std_logic;
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
SIGNAL \audioout|Bcount~5_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \audioout|bck0~q\ : std_logic;
SIGNAL \audioout|bck1~q\ : std_logic;
SIGNAL \audioout|Bcount[4]~1_combout\ : std_logic;
SIGNAL \audioout|LRDATA[11]~feeder_combout\ : std_logic;
SIGNAL \audioout|DACData_reg~0_combout\ : std_logic;
SIGNAL \audioout|Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~4_combout\ : std_logic;
SIGNAL \audioout|Bcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~3_combout\ : std_logic;
SIGNAL \audioout|Mux13~21_combout\ : std_logic;
SIGNAL \audioout|LRDATA[12]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[15]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~4_combout\ : std_logic;
SIGNAL \audioout|Bcount~0_combout\ : std_logic;
SIGNAL \audioout|Bcount~2_combout\ : std_logic;
SIGNAL \audioout|Mux13~17_combout\ : std_logic;
SIGNAL \audioout|LRDATA[4]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[5]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[7]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~0_combout\ : std_logic;
SIGNAL \audioout|LRDATA[23]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[21]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[17]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[16]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[19]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~25_combout\ : std_logic;
SIGNAL \audioout|Mux13~8_combout\ : std_logic;
SIGNAL \audioout|LRDATA[26]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~29_combout\ : std_logic;
SIGNAL \audioout|LRDATA[31]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~12_combout\ : std_logic;
SIGNAL \audioout|Mux13~16_combout\ : std_logic;
SIGNAL \audioout|i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \audioout|Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clockgen|s_counter_lr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i2out|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clockgen|s_counter_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \audioout|LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|SDATA_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audioout|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2sin|DATA_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|DATA_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi|dig0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi|dig1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_shift_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b_ack~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d7~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a5~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d2~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DIN~input_o\ : std_logic;
SIGNAL \ALT_INV_LR_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_CS~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \spi|ALT_INV_dig1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi|ALT_INV_dig0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audioout|ALT_INV_i2c_counter\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \audioout|ALT_INV_state.start~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b0~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_s_current_lr~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_sck1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_sck0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_word_counter~0_combout\ : std_logic;
SIGNAL \i2sin|ALT_INV_DATA_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|ALT_INV_LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_DATA_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.b_stop0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_I2C_SCLK~combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.a_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b_ack~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~8_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~7_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.d4~q\ : std_logic;
SIGNAL \audioout|ALT_INV_word_count\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \audioout|ALT_INV_state.d6~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~2_combout\ : std_logic;
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
SIGNAL \i2out|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2out|ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_s_current_lr~q\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_bit_clk~0_combout\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_lr_clk~0_combout\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_counter_lr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clockgen|ALT_INV_v_lr_clk_enable~0_combout\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_counter_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.b_end~q\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_bit_clk~q\ : std_logic;
SIGNAL \clockgen|ALT_INV_s_lr_clk~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~10_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~30_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~26_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~22_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~18_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~29_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~25_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~21_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~17_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \i2out|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~12_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~8_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
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
\i2sin|ALT_INV_shift_reg[7]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[7]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[3]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[3]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[2]~DUPLICATE_q\;
\audioout|ALT_INV_state.b_ack~DUPLICATE_q\ <= NOT \audioout|state.b_ack~DUPLICATE_q\;
\audioout|ALT_INV_state.d7~DUPLICATE_q\ <= NOT \audioout|state.d7~DUPLICATE_q\;
\audioout|ALT_INV_state.a5~DUPLICATE_q\ <= NOT \audioout|state.a5~DUPLICATE_q\;
\audioout|ALT_INV_state.d2~DUPLICATE_q\ <= NOT \audioout|state.d2~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ <= NOT \audioout|Bcount[0]~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[1]~DUPLICATE_q\ <= NOT \audioout|Bcount[1]~DUPLICATE_q\;
\ALT_INV_DIN~input_o\ <= NOT \DIN~input_o\;
\ALT_INV_LR_CLK~input_o\ <= NOT \LR_CLK~input_o\;
\ALT_INV_CS~input_o\ <= NOT \CS~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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
\audioout|ALT_INV_i2c_counter\(6) <= NOT \audioout|i2c_counter\(6);
\audioout|ALT_INV_i2c_counter\(7) <= NOT \audioout|i2c_counter\(7);
\audioout|ALT_INV_i2c_counter\(8) <= NOT \audioout|i2c_counter\(8);
\audioout|ALT_INV_state.start~q\ <= NOT \audioout|state.start~q\;
\audioout|ALT_INV_state.b0~q\ <= NOT \audioout|state.b0~q\;
\i2sin|ALT_INV_shift_reg\(12) <= NOT \i2sin|shift_reg\(12);
\i2sin|ALT_INV_shift_reg\(13) <= NOT \i2sin|shift_reg\(13);
\i2sin|ALT_INV_shift_reg\(6) <= NOT \i2sin|shift_reg\(6);
\i2sin|ALT_INV_shift_reg\(7) <= NOT \i2sin|shift_reg\(7);
\audioout|ALT_INV_i2c_counter\(1) <= NOT \audioout|i2c_counter\(1);
\i2sin|ALT_INV_shift_reg\(1) <= NOT \i2sin|shift_reg\(1);
\i2sin|ALT_INV_shift_reg\(0) <= NOT \i2sin|shift_reg\(0);
\i2sin|ALT_INV_shift_reg\(2) <= NOT \i2sin|shift_reg\(2);
\i2sin|ALT_INV_shift_reg\(9) <= NOT \i2sin|shift_reg\(9);
\i2sin|ALT_INV_shift_reg\(11) <= NOT \i2sin|shift_reg\(11);
\i2sin|ALT_INV_shift_reg\(8) <= NOT \i2sin|shift_reg\(8);
\i2sin|ALT_INV_s_parallel_load~q\ <= NOT \i2sin|s_parallel_load~q\;
\i2sin|ALT_INV_s_current_lr~q\ <= NOT \i2sin|s_current_lr~q\;
\i2sin|ALT_INV_shift_reg\(10) <= NOT \i2sin|shift_reg\(10);
\audioout|ALT_INV_state.b1~q\ <= NOT \audioout|state.b1~q\;
\audioout|ALT_INV_Equal0~0_combout\ <= NOT \audioout|Equal0~0_combout\;
\audioout|ALT_INV_next_state_i2c~0_combout\ <= NOT \audioout|next_state_i2c~0_combout\;
\audioout|ALT_INV_sck1~q\ <= NOT \audioout|sck1~q\;
\audioout|ALT_INV_sck0~q\ <= NOT \audioout|sck0~q\;
\audioout|ALT_INV_word_counter~0_combout\ <= NOT \audioout|word_counter~0_combout\;
\i2sin|ALT_INV_DATA_L\(14) <= NOT \i2sin|DATA_L\(14);
\audioout|ALT_INV_LRDATA\(26) <= NOT \audioout|LRDATA\(26);
\audioout|ALT_INV_LRDATA\(24) <= NOT \audioout|LRDATA\(24);
\audioout|ALT_INV_LRDATA\(27) <= NOT \audioout|LRDATA\(27);
\audioout|ALT_INV_LRDATA\(25) <= NOT \audioout|LRDATA\(25);
\i2sin|ALT_INV_DATA_L\(12) <= NOT \i2sin|DATA_L\(12);
\i2sin|ALT_INV_DATA_L\(15) <= NOT \i2sin|DATA_L\(15);
\i2sin|ALT_INV_DATA_L\(13) <= NOT \i2sin|DATA_L\(13);
\i2sin|ALT_INV_DATA_L\(6) <= NOT \i2sin|DATA_L\(6);
\audioout|ALT_INV_LRDATA\(18) <= NOT \audioout|LRDATA\(18);
\audioout|ALT_INV_LRDATA\(16) <= NOT \audioout|LRDATA\(16);
\audioout|ALT_INV_LRDATA\(19) <= NOT \audioout|LRDATA\(19);
\audioout|ALT_INV_LRDATA\(17) <= NOT \audioout|LRDATA\(17);
\i2sin|ALT_INV_DATA_L\(4) <= NOT \i2sin|DATA_L\(4);
\i2sin|ALT_INV_DATA_L\(7) <= NOT \i2sin|DATA_L\(7);
\i2sin|ALT_INV_DATA_L\(5) <= NOT \i2sin|DATA_L\(5);
\i2sin|ALT_INV_DATA_R\(14) <= NOT \i2sin|DATA_R\(14);
\audioout|ALT_INV_LRDATA\(10) <= NOT \audioout|LRDATA\(10);
\audioout|ALT_INV_LRDATA\(8) <= NOT \audioout|LRDATA\(8);
\audioout|ALT_INV_LRDATA\(11) <= NOT \audioout|LRDATA\(11);
\audioout|ALT_INV_LRDATA\(9) <= NOT \audioout|LRDATA\(9);
\i2sin|ALT_INV_DATA_R\(12) <= NOT \i2sin|DATA_R\(12);
\i2sin|ALT_INV_DATA_R\(15) <= NOT \i2sin|DATA_R\(15);
\i2sin|ALT_INV_DATA_R\(13) <= NOT \i2sin|DATA_R\(13);
\i2sin|ALT_INV_DATA_R\(6) <= NOT \i2sin|DATA_R\(6);
\audioout|ALT_INV_LRDATA\(2) <= NOT \audioout|LRDATA\(2);
\audioout|ALT_INV_LRDATA\(0) <= NOT \audioout|LRDATA\(0);
\audioout|ALT_INV_LRDATA\(3) <= NOT \audioout|LRDATA\(3);
\audioout|ALT_INV_LRDATA\(1) <= NOT \audioout|LRDATA\(1);
\i2sin|ALT_INV_DATA_R\(4) <= NOT \i2sin|DATA_R\(4);
\i2sin|ALT_INV_DATA_R\(7) <= NOT \i2sin|DATA_R\(7);
\i2sin|ALT_INV_DATA_R\(5) <= NOT \i2sin|DATA_R\(5);
\audioout|ALT_INV_state.b_stop0~q\ <= NOT \audioout|state.b_stop0~q\;
\i2sin|ALT_INV_DATA_R\(1) <= NOT \i2sin|DATA_R\(1);
\i2sin|ALT_INV_DATA_R\(3) <= NOT \i2sin|DATA_R\(3);
\i2sin|ALT_INV_DATA_R\(0) <= NOT \i2sin|DATA_R\(0);
\i2sin|ALT_INV_DATA_R\(2) <= NOT \i2sin|DATA_R\(2);
\i2sin|ALT_INV_DATA_R\(9) <= NOT \i2sin|DATA_R\(9);
\i2sin|ALT_INV_DATA_R\(11) <= NOT \i2sin|DATA_R\(11);
\i2sin|ALT_INV_DATA_R\(8) <= NOT \i2sin|DATA_R\(8);
\i2sin|ALT_INV_DATA_R\(10) <= NOT \i2sin|DATA_R\(10);
\i2sin|ALT_INV_DATA_L\(1) <= NOT \i2sin|DATA_L\(1);
\i2sin|ALT_INV_DATA_L\(3) <= NOT \i2sin|DATA_L\(3);
\i2sin|ALT_INV_DATA_L\(0) <= NOT \i2sin|DATA_L\(0);
\i2sin|ALT_INV_DATA_L\(2) <= NOT \i2sin|DATA_L\(2);
\i2sin|ALT_INV_DATA_L\(9) <= NOT \i2sin|DATA_L\(9);
\i2sin|ALT_INV_DATA_L\(11) <= NOT \i2sin|DATA_L\(11);
\i2sin|ALT_INV_DATA_L\(8) <= NOT \i2sin|DATA_L\(8);
\i2sin|ALT_INV_DATA_L\(10) <= NOT \i2sin|DATA_L\(10);
\audioout|ALT_INV_I2C_SCLK~combout\ <= NOT \audioout|I2C_SCLK~combout\;
\audioout|ALT_INV_i2c_counter\(9) <= NOT \audioout|i2c_counter\(9);
\audioout|ALT_INV_state.d_ack~q\ <= NOT \audioout|state.d_ack~q\;
\audioout|ALT_INV_state.a_ack~q\ <= NOT \audioout|state.a_ack~q\;
\audioout|ALT_INV_state.b_ack~q\ <= NOT \audioout|state.b_ack~q\;
\audioout|ALT_INV_Selector30~8_combout\ <= NOT \audioout|Selector30~8_combout\;
\audioout|ALT_INV_Selector30~7_combout\ <= NOT \audioout|Selector30~7_combout\;
\audioout|ALT_INV_state.d4~q\ <= NOT \audioout|state.d4~q\;
\audioout|ALT_INV_word_count\(3) <= NOT \audioout|word_count\(3);
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
\audioout|ALT_INV_state.d6~q\ <= NOT \audioout|state.d6~q\;
\audioout|ALT_INV_Selector30~2_combout\ <= NOT \audioout|Selector30~2_combout\;
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
\i2out|ALT_INV_DOUT~0_combout\ <= NOT \i2out|DOUT~0_combout\;
\i2out|ALT_INV_counter\(0) <= NOT \i2out|counter\(0);
\i2out|ALT_INV_counter\(1) <= NOT \i2out|counter\(1);
\i2out|ALT_INV_counter\(2) <= NOT \i2out|counter\(2);
\i2out|ALT_INV_Mux1~16_combout\ <= NOT \i2out|Mux1~16_combout\;
\i2out|ALT_INV_s_current_lr~q\ <= NOT \i2out|s_current_lr~q\;
\i2out|ALT_INV_counter\(3) <= NOT \i2out|counter\(3);
\clockgen|ALT_INV_s_bit_clk~0_combout\ <= NOT \clockgen|s_bit_clk~0_combout\;
\clockgen|ALT_INV_s_lr_clk~0_combout\ <= NOT \clockgen|s_lr_clk~0_combout\;
\clockgen|ALT_INV_s_counter_lr\(1) <= NOT \clockgen|s_counter_lr\(1);
\clockgen|ALT_INV_s_counter_lr\(2) <= NOT \clockgen|s_counter_lr\(2);
\clockgen|ALT_INV_s_counter_lr\(3) <= NOT \clockgen|s_counter_lr\(3);
\clockgen|ALT_INV_s_counter_lr\(4) <= NOT \clockgen|s_counter_lr\(4);
\clockgen|ALT_INV_v_lr_clk_enable~0_combout\ <= NOT \clockgen|v_lr_clk_enable~0_combout\;
\clockgen|ALT_INV_s_counter_bit\(0) <= NOT \clockgen|s_counter_bit\(0);
\clockgen|ALT_INV_s_counter_lr\(0) <= NOT \clockgen|s_counter_lr\(0);
\audioout|ALT_INV_Bcount\(4) <= NOT \audioout|Bcount\(4);
\audioout|ALT_INV_Bcount\(3) <= NOT \audioout|Bcount\(3);
\audioout|ALT_INV_i2c_counter\(2) <= NOT \audioout|i2c_counter\(2);
\audioout|ALT_INV_state.b_end~q\ <= NOT \audioout|state.b_end~q\;
\clockgen|ALT_INV_s_bit_clk~q\ <= NOT \clockgen|s_bit_clk~q\;
\clockgen|ALT_INV_s_lr_clk~q\ <= NOT \clockgen|s_lr_clk~q\;
\audioout|ALT_INV_Selector30~10_combout\ <= NOT \audioout|Selector30~10_combout\;
\audioout|ALT_INV_Add1~9_sumout\ <= NOT \audioout|Add1~9_sumout\;
\i2out|ALT_INV_Mux1~30_combout\ <= NOT \i2out|Mux1~30_combout\;
\i2out|ALT_INV_Mux1~26_combout\ <= NOT \i2out|Mux1~26_combout\;
\i2out|ALT_INV_Mux1~22_combout\ <= NOT \i2out|Mux1~22_combout\;
\i2out|ALT_INV_Mux1~18_combout\ <= NOT \i2out|Mux1~18_combout\;
\audioout|ALT_INV_Mux13~29_combout\ <= NOT \audioout|Mux13~29_combout\;
\audioout|ALT_INV_Mux13~25_combout\ <= NOT \audioout|Mux13~25_combout\;
\audioout|ALT_INV_Mux13~21_combout\ <= NOT \audioout|Mux13~21_combout\;
\audioout|ALT_INV_Mux13~17_combout\ <= NOT \audioout|Mux13~17_combout\;
\i2out|ALT_INV_Mux1~12_combout\ <= NOT \i2out|Mux1~12_combout\;
\i2out|ALT_INV_Mux1~8_combout\ <= NOT \i2out|Mux1~8_combout\;
\i2out|ALT_INV_Mux1~4_combout\ <= NOT \i2out|Mux1~4_combout\;
\i2out|ALT_INV_Mux1~0_combout\ <= NOT \i2out|Mux1~0_combout\;
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
	i => \clockgen|ALT_INV_s_lr_clk~q\,
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
	i => \clockgen|s_bit_clk~q\,
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
	i => \i2out|DOUT~q\,
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

-- Location: CLKCTRL_G5
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

-- Location: FF_X34_Y2_N11
\audioout|sck0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|I2C_SCLK~combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|sck0~q\);

-- Location: FF_X34_Y2_N44
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

-- Location: MLABCELL_X34_Y2_N42
\audioout|next_state_i2c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|next_state_i2c~0_combout\ = ( \audioout|sck1~q\ & ( !\audioout|sck0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_sck0~q\,
	dataf => \audioout|ALT_INV_sck1~q\,
	combout => \audioout|next_state_i2c~0_combout\);

-- Location: MLABCELL_X34_Y2_N54
\audioout|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux10~0_combout\ = ( \audioout|word_count\(0) & ( !\audioout|word_count\(1) ) ) # ( !\audioout|word_count\(0) & ( \audioout|word_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Mux10~0_combout\);

-- Location: MLABCELL_X34_Y2_N57
\audioout|I2C_SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~0_combout\ = (\audioout|state.b_stop1~q\) # (\audioout|state.b_end~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b_end~q\,
	datac => \audioout|ALT_INV_state.b_stop1~q\,
	combout => \audioout|I2C_SCLK~0_combout\);

-- Location: FF_X34_Y2_N20
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

-- Location: MLABCELL_X34_Y2_N39
\audioout|word_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|word_counter~0_combout\ = ( \audioout|state.b_end~q\ ) # ( !\audioout|state.b_end~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \audioout|ALT_INV_state.b_end~q\,
	combout => \audioout|word_counter~0_combout\);

-- Location: FF_X34_Y2_N59
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

-- Location: MLABCELL_X34_Y2_N24
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

-- Location: FF_X34_Y2_N56
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

-- Location: LABCELL_X33_Y2_N21
\audioout|word_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|word_count[3]~0_combout\ = ( \audioout|word_count\(1) & ( \audioout|state.d_ack~q\ & ( !\audioout|word_count\(3) $ (((!\audioout|word_count\(2)) # (!\audioout|word_count\(0)))) ) ) ) # ( !\audioout|word_count\(1) & ( \audioout|state.d_ack~q\ & ( 
-- \audioout|word_count\(3) ) ) ) # ( \audioout|word_count\(1) & ( !\audioout|state.d_ack~q\ & ( \audioout|word_count\(3) ) ) ) # ( !\audioout|word_count\(1) & ( !\audioout|state.d_ack~q\ & ( \audioout|word_count\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_word_count\(0),
	datad => \audioout|ALT_INV_word_count\(3),
	datae => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_state.d_ack~q\,
	combout => \audioout|word_count[3]~0_combout\);

-- Location: FF_X33_Y2_N56
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

-- Location: MLABCELL_X34_Y2_N51
\audioout|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Equal0~0_combout\ = ( \audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (!\audioout|word_count\(2) & \audioout|word_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_word_count\(3),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Equal0~0_combout\);

-- Location: MLABCELL_X34_Y2_N45
\audioout|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector0~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( ((!\audioout|next_state_i2c~0_combout\) # (!\audioout|state.d_ack~q\)) # (\audioout|Equal0~0_combout\) ) ) # ( !\audioout|I2C_SCLK~combout\ & ( (\audioout|state.initialize~q\ & 
-- (((!\audioout|next_state_i2c~0_combout\) # (!\audioout|state.d_ack~q\)) # (\audioout|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Equal0~0_combout\,
	datab => \audioout|ALT_INV_next_state_i2c~0_combout\,
	datac => \audioout|ALT_INV_state.d_ack~q\,
	datad => \audioout|ALT_INV_state.initialize~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector0~0_combout\);

-- Location: FF_X34_Y2_N47
\audioout|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Selector0~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.initialize~q\);

-- Location: MLABCELL_X34_Y2_N21
\audioout|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector1~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( (!\audioout|state.initialize~q\) # ((!\audioout|next_state_i2c~0_combout\ & \audioout|state.start~q\)) ) ) # ( !\audioout|I2C_SCLK~combout\ & ( (!\audioout|next_state_i2c~0_combout\ & 
-- \audioout|state.start~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_next_state_i2c~0_combout\,
	datac => \audioout|ALT_INV_state.initialize~q\,
	datad => \audioout|ALT_INV_state.start~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector1~0_combout\);

-- Location: FF_X34_Y2_N22
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

-- Location: MLABCELL_X34_Y2_N0
\audioout|state.b0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b0~feeder_combout\ = \audioout|state.start~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.start~q\,
	combout => \audioout|state.b0~feeder_combout\);

-- Location: FF_X34_Y2_N1
\audioout|state.b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.b0~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b0~q\);

-- Location: MLABCELL_X34_Y2_N15
\audioout|state.b1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b1~feeder_combout\ = \audioout|state.b0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b0~q\,
	combout => \audioout|state.b1~feeder_combout\);

-- Location: FF_X34_Y2_N17
\audioout|state.b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.b1~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b1~q\);

-- Location: MLABCELL_X34_Y2_N3
\audioout|state.b2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b2~feeder_combout\ = \audioout|state.b1~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.b1~q\,
	combout => \audioout|state.b2~feeder_combout\);

-- Location: FF_X34_Y2_N5
\audioout|state.b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.b2~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b2~q\);

-- Location: FF_X34_Y2_N4
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

-- Location: FF_X35_Y2_N38
\audioout|state.b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b3~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b4~q\);

-- Location: FF_X35_Y2_N43
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

-- Location: MLABCELL_X34_Y2_N12
\audioout|state.b6~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b6~feeder_combout\ = ( \audioout|state.b5~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \audioout|ALT_INV_state.b5~q\,
	combout => \audioout|state.b6~feeder_combout\);

-- Location: FF_X34_Y2_N14
\audioout|state.b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.b6~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b6~q\);

-- Location: FF_X34_Y2_N38
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

-- Location: FF_X33_Y2_N52
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

-- Location: MLABCELL_X34_Y2_N27
\audioout|state.a0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.a0~feeder_combout\ = \audioout|state.b_ack~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b_ack~q\,
	combout => \audioout|state.a0~feeder_combout\);

-- Location: FF_X34_Y2_N29
\audioout|state.a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.a0~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a0~q\);

-- Location: FF_X34_Y2_N28
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

-- Location: FF_X35_Y2_N46
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

-- Location: FF_X34_Y2_N16
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

-- Location: FF_X33_Y2_N41
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

-- Location: FF_X33_Y2_N31
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

-- Location: FF_X34_Y2_N41
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

-- Location: MLABCELL_X34_Y2_N36
\audioout|state.a7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.a7~feeder_combout\ = \audioout|state.a6~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_state.a6~q\,
	combout => \audioout|state.a7~feeder_combout\);

-- Location: FF_X34_Y2_N37
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

-- Location: FF_X33_Y2_N35
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

-- Location: FF_X33_Y2_N50
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

-- Location: FF_X33_Y2_N47
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

-- Location: FF_X33_Y2_N16
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

-- Location: FF_X34_Y2_N13
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

-- Location: FF_X34_Y2_N26
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

-- Location: FF_X34_Y2_N2
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

-- Location: FF_X34_Y2_N34
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

-- Location: FF_X33_Y2_N19
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

-- Location: FF_X34_Y2_N32
\audioout|state.d_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.d7~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d_ack~q\);

-- Location: MLABCELL_X34_Y2_N6
\audioout|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector29~0_combout\ = ( \audioout|next_state_i2c~0_combout\ & ( (!\audioout|I2C_SCLK~combout\ & (((\audioout|state.d_ack~q\ & \audioout|Equal0~0_combout\)) # (\audioout|state.b_stop0~q\))) # (\audioout|I2C_SCLK~combout\ & 
-- (\audioout|state.d_ack~q\ & (\audioout|Equal0~0_combout\))) ) ) # ( !\audioout|next_state_i2c~0_combout\ & ( (!\audioout|I2C_SCLK~combout\ & \audioout|state.b_stop0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_I2C_SCLK~combout\,
	datab => \audioout|ALT_INV_state.d_ack~q\,
	datac => \audioout|ALT_INV_Equal0~0_combout\,
	datad => \audioout|ALT_INV_state.b_stop0~q\,
	dataf => \audioout|ALT_INV_next_state_i2c~0_combout\,
	combout => \audioout|Selector29~0_combout\);

-- Location: FF_X34_Y2_N8
\audioout|state.b_stop0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Selector29~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_stop0~q\);

-- Location: LABCELL_X33_Y2_N27
\audioout|next_state.b_stop1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|next_state.b_stop1~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( \audioout|state.b_stop0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_state.b_stop0~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|next_state.b_stop1~0_combout\);

-- Location: FF_X33_Y2_N29
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

-- Location: LABCELL_X35_Y2_N33
\clockgen|s_counter_bit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_bit[0]~0_combout\ = !\clockgen|s_counter_bit\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clockgen|ALT_INV_s_counter_bit\(0),
	combout => \clockgen|s_counter_bit[0]~0_combout\);

-- Location: FF_X35_Y2_N2
\clockgen|s_counter_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clockgen|s_counter_bit[0]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_bit\(0));

-- Location: LABCELL_X35_Y2_N0
\audioout|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~5_sumout\ = SUM(( \clockgen|s_counter_bit\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))
-- \audioout|Add1~6\ = CARRY(( \clockgen|s_counter_bit\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_i2c_counter\(1),
	datad => \clockgen|ALT_INV_s_counter_bit\(0),
	cin => GND,
	sumout => \audioout|Add1~5_sumout\,
	cout => \audioout|Add1~6\);

-- Location: FF_X35_Y2_N35
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

-- Location: LABCELL_X35_Y2_N3
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

-- Location: FF_X35_Y2_N4
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

-- Location: LABCELL_X35_Y2_N6
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

-- Location: FF_X35_Y2_N8
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

-- Location: LABCELL_X35_Y2_N9
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

-- Location: FF_X35_Y2_N11
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

-- Location: LABCELL_X35_Y2_N12
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

-- Location: FF_X35_Y2_N14
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

-- Location: LABCELL_X35_Y2_N15
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

-- Location: FF_X35_Y2_N17
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

-- Location: LABCELL_X35_Y2_N18
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

-- Location: FF_X35_Y2_N20
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

-- Location: LABCELL_X35_Y2_N21
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

-- Location: FF_X35_Y2_N23
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

-- Location: LABCELL_X35_Y2_N24
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

-- Location: LABCELL_X35_Y2_N54
\audioout|i2c_counter[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|i2c_counter[9]~feeder_combout\ = ( \audioout|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \audioout|ALT_INV_Add1~9_sumout\,
	combout => \audioout|i2c_counter[9]~feeder_combout\);

-- Location: FF_X35_Y2_N56
\audioout|i2c_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|i2c_counter[9]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(9));

-- Location: MLABCELL_X34_Y2_N9
\audioout|I2C_SCLK\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~combout\ = LCELL(( \audioout|state.b_end~q\ ) # ( !\audioout|state.b_end~q\ & ( (\audioout|i2c_counter\(9)) # (\audioout|state.b_stop1~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.b_stop1~q\,
	datad => \audioout|ALT_INV_i2c_counter\(9),
	dataf => \audioout|ALT_INV_state.b_end~q\,
	combout => \audioout|I2C_SCLK~combout\);

-- Location: MLABCELL_X34_Y2_N18
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

-- Location: FF_X34_Y2_N50
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

-- Location: FF_X33_Y2_N32
\audioout|state.a5~DUPLICATE\ : dffeas
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
	q => \audioout|state.a5~DUPLICATE_q\);

-- Location: LABCELL_X33_Y2_N24
\audioout|Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~2_combout\ = ( \audioout|state.a5~DUPLICATE_q\ & ( (!\audioout|word_count\(0) & (((\audioout|word_count\(1))))) # (\audioout|word_count\(0) & (\audioout|state.d3~q\ & (!\audioout|word_count\(2)))) ) ) # ( 
-- !\audioout|state.a5~DUPLICATE_q\ & ( (\audioout|word_count\(0) & (\audioout|state.d3~q\ & !\audioout|word_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(0),
	datab => \audioout|ALT_INV_state.d3~q\,
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_state.a5~DUPLICATE_q\,
	combout => \audioout|Selector30~2_combout\);

-- Location: LABCELL_X33_Y2_N3
\audioout|Selector30~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~7_combout\ = ( \audioout|state.a5~DUPLICATE_q\ & ( ((\audioout|state.d6~q\) # (\audioout|word_count\(2))) # (\audioout|state.d4~q\) ) ) # ( !\audioout|state.a5~DUPLICATE_q\ & ( (!\audioout|word_count\(2) & (((\audioout|state.d6~q\)) # 
-- (\audioout|state.d4~q\))) # (\audioout|word_count\(2) & (((\audioout|state.d2~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001111111010011000111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d4~q\,
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.d6~q\,
	datad => \audioout|ALT_INV_state.d2~q\,
	dataf => \audioout|ALT_INV_state.a5~DUPLICATE_q\,
	combout => \audioout|Selector30~7_combout\);

-- Location: FF_X33_Y2_N20
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

-- Location: LABCELL_X33_Y2_N0
\audioout|Selector30~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~8_combout\ = ( \audioout|state.a3~q\ & ( (!\audioout|word_count\(2)) # (\audioout|state.a6~q\) ) ) # ( !\audioout|state.a3~q\ & ( \audioout|state.a6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_state.a6~q\,
	dataf => \audioout|ALT_INV_state.a3~q\,
	combout => \audioout|Selector30~8_combout\);

-- Location: LABCELL_X33_Y2_N6
\audioout|Selector30~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~10_combout\ = ( !\audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (((\audioout|state.d7~DUPLICATE_q\ & ((\audioout|word_count\(3)) # (\audioout|word_count\(2))))) # (\audioout|Selector30~8_combout\))) # 
-- (\audioout|word_count\(1) & ((((\audioout|state.d7~DUPLICATE_q\))))) ) ) # ( \audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (((\audioout|state.d7~DUPLICATE_q\ & ((!\audioout|word_count\(2)) # (\audioout|word_count\(3))))) # 
-- (\audioout|Selector30~7_combout\))) # (\audioout|word_count\(1) & ((((\audioout|word_count\(3) & \audioout|state.d7~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001111111111111111000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datab => \audioout|ALT_INV_word_count\(1),
	datac => \audioout|ALT_INV_Selector30~7_combout\,
	datad => \audioout|ALT_INV_word_count\(3),
	datae => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_state.d7~DUPLICATE_q\,
	datag => \audioout|ALT_INV_Selector30~8_combout\,
	combout => \audioout|Selector30~10_combout\);

-- Location: FF_X33_Y2_N17
\audioout|state.d2~DUPLICATE\ : dffeas
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
	q => \audioout|state.d2~DUPLICATE_q\);

-- Location: LABCELL_X33_Y2_N48
\audioout|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~0_combout\ = ( \audioout|state.d0~q\ & ( \audioout|state.d2~DUPLICATE_q\ & ( (\audioout|word_count\(1) & !\audioout|word_count\(2)) ) ) ) # ( !\audioout|state.d0~q\ & ( \audioout|state.d2~DUPLICATE_q\ & ( (\audioout|word_count\(1) & 
-- (!\audioout|word_count\(2) & ((!\audioout|word_count\(0)) # (\audioout|state.d3~q\)))) ) ) ) # ( \audioout|state.d0~q\ & ( !\audioout|state.d2~DUPLICATE_q\ & ( (\audioout|word_count\(1) & !\audioout|word_count\(2)) ) ) ) # ( !\audioout|state.d0~q\ & ( 
-- !\audioout|state.d2~DUPLICATE_q\ & ( (\audioout|word_count\(1) & (!\audioout|word_count\(2) & \audioout|state.d3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000010100000101000001000000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(1),
	datab => \audioout|ALT_INV_word_count\(0),
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_state.d3~q\,
	datae => \audioout|ALT_INV_state.d0~q\,
	dataf => \audioout|ALT_INV_state.d2~DUPLICATE_q\,
	combout => \audioout|Selector30~0_combout\);

-- Location: LABCELL_X33_Y2_N57
\audioout|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~1_combout\ = ( \audioout|word_count\(0) & ( (!\audioout|word_count\(2) & (!\audioout|word_count\(1) & ((\audioout|state.d5~q\) # (\audioout|state.a7~q\)))) ) ) # ( !\audioout|word_count\(0) & ( (!\audioout|word_count\(2) & 
-- (\audioout|word_count\(1) & ((\audioout|state.d5~q\) # (\audioout|state.a7~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010001010100000000000000000001010100010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datab => \audioout|ALT_INV_state.a7~q\,
	datac => \audioout|ALT_INV_state.d5~q\,
	datad => \audioout|ALT_INV_word_count\(1),
	datae => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Selector30~1_combout\);

-- Location: LABCELL_X33_Y2_N36
\audioout|Selector30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~5_combout\ = ( \audioout|word_count\(2) & ( \audioout|state.a3~q\ & ( ((!\audioout|word_count\(0) & (\audioout|word_count\(1) & \audioout|state.d1~q\)) # (\audioout|word_count\(0) & ((\audioout|state.d1~q\) # 
-- (\audioout|word_count\(1))))) # (\audioout|state.a4~q\) ) ) ) # ( !\audioout|word_count\(2) & ( \audioout|state.a3~q\ & ( (\audioout|word_count\(1) & (((\audioout|word_count\(0) & \audioout|state.a4~q\)) # (\audioout|state.d1~q\))) ) ) ) # ( 
-- \audioout|word_count\(2) & ( !\audioout|state.a3~q\ & ( (!\audioout|state.a4~q\ & (\audioout|state.d1~q\ & (!\audioout|word_count\(0) $ (!\audioout|word_count\(1))))) # (\audioout|state.a4~q\ & ((!\audioout|word_count\(0)) # 
-- ((!\audioout|word_count\(1))))) ) ) ) # ( !\audioout|word_count\(2) & ( !\audioout|state.a3~q\ & ( (\audioout|word_count\(1) & (((\audioout|word_count\(0) & \audioout|state.a4~q\)) # (\audioout|state.d1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001111001100100111101000000001000011110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(0),
	datab => \audioout|ALT_INV_state.a4~q\,
	datac => \audioout|ALT_INV_word_count\(1),
	datad => \audioout|ALT_INV_state.d1~q\,
	datae => \audioout|ALT_INV_word_count\(2),
	dataf => \audioout|ALT_INV_state.a3~q\,
	combout => \audioout|Selector30~5_combout\);

-- Location: LABCELL_X35_Y2_N42
\audioout|Selector30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~4_combout\ = ( !\audioout|state.b5~q\ & ( \audioout|state.initialize~q\ & ( (!\audioout|state.b3~q\ & !\audioout|state.b2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b3~q\,
	datac => \audioout|ALT_INV_state.b2~q\,
	datae => \audioout|ALT_INV_state.b5~q\,
	dataf => \audioout|ALT_INV_state.initialize~q\,
	combout => \audioout|Selector30~4_combout\);

-- Location: MLABCELL_X34_Y2_N48
\audioout|Selector30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~3_combout\ = ( \audioout|state.d6~q\ & ( (!\audioout|word_count\(1) & (!\audioout|state.a6~q\ & !\audioout|state.d5~q\)) ) ) # ( !\audioout|state.d6~q\ & ( (!\audioout|state.a6~q\ & ((!\audioout|state.d5~q\) # 
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
	dataf => \audioout|ALT_INV_state.d6~q\,
	combout => \audioout|Selector30~3_combout\);

-- Location: MLABCELL_X34_Y2_N30
\audioout|Selector30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~6_combout\ = ( !\audioout|I2C_SCLK~0_combout\ & ( \audioout|word_count\(0) & ( (!\audioout|Selector30~5_combout\ & \audioout|Selector30~4_combout\) ) ) ) # ( !\audioout|I2C_SCLK~0_combout\ & ( !\audioout|word_count\(0) & ( 
-- (!\audioout|Selector30~5_combout\ & (\audioout|Selector30~4_combout\ & ((!\audioout|word_count\(2)) # (\audioout|Selector30~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~5_combout\,
	datab => \audioout|ALT_INV_word_count\(2),
	datac => \audioout|ALT_INV_Selector30~4_combout\,
	datad => \audioout|ALT_INV_Selector30~3_combout\,
	datae => \audioout|ALT_INV_I2C_SCLK~0_combout\,
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Selector30~6_combout\);

-- Location: LABCELL_X33_Y2_N12
\audioout|Selector30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~9_combout\ = ( \audioout|Selector30~1_combout\ & ( \audioout|Selector30~6_combout\ ) ) # ( !\audioout|Selector30~1_combout\ & ( \audioout|Selector30~6_combout\ & ( ((\audioout|Selector30~0_combout\) # 
-- (\audioout|Selector30~10_combout\)) # (\audioout|Selector30~2_combout\) ) ) ) # ( \audioout|Selector30~1_combout\ & ( !\audioout|Selector30~6_combout\ ) ) # ( !\audioout|Selector30~1_combout\ & ( !\audioout|Selector30~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~2_combout\,
	datab => \audioout|ALT_INV_Selector30~10_combout\,
	datac => \audioout|ALT_INV_Selector30~0_combout\,
	datae => \audioout|ALT_INV_Selector30~1_combout\,
	dataf => \audioout|ALT_INV_Selector30~6_combout\,
	combout => \audioout|Selector30~9_combout\);

-- Location: FF_X33_Y2_N53
\audioout|state.b_ack~DUPLICATE\ : dffeas
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
	q => \audioout|state.b_ack~DUPLICATE_q\);

-- Location: LABCELL_X33_Y2_N33
\audioout|WideOr32\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|WideOr32~combout\ = ( !\audioout|state.a_ack~q\ & ( (!\audioout|state.b_ack~DUPLICATE_q\ & !\audioout|state.d_ack~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b_ack~DUPLICATE_q\,
	datad => \audioout|ALT_INV_state.d_ack~q\,
	datae => \audioout|ALT_INV_state.a_ack~q\,
	combout => \audioout|WideOr32~combout\);

-- Location: LABCELL_X35_Y2_N39
\clockgen|s_bit_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_bit_clk~0_combout\ = ( !\clockgen|s_counter_bit\(0) & ( \clockgen|s_bit_clk~q\ ) ) # ( \clockgen|s_counter_bit\(0) & ( !\clockgen|s_bit_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clockgen|ALT_INV_s_counter_bit\(0),
	dataf => \clockgen|ALT_INV_s_bit_clk~q\,
	combout => \clockgen|s_bit_clk~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\clockgen|s_bit_clk~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_bit_clk~feeder_combout\ = \clockgen|s_bit_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clockgen|ALT_INV_s_bit_clk~0_combout\,
	combout => \clockgen|s_bit_clk~feeder_combout\);

-- Location: FF_X35_Y2_N50
\clockgen|s_bit_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clockgen|s_bit_clk~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_bit_clk~q\);

-- Location: LABCELL_X35_Y1_N15
\clockgen|v_lr_clk_enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|v_lr_clk_enable~0_combout\ = ( \clockgen|s_counter_bit\(0) & ( \clockgen|s_bit_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clockgen|ALT_INV_s_bit_clk~q\,
	dataf => \clockgen|ALT_INV_s_counter_bit\(0),
	combout => \clockgen|v_lr_clk_enable~0_combout\);

-- Location: LABCELL_X37_Y1_N39
\clockgen|s_counter_lr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_lr[0]~4_combout\ = ( !\clockgen|s_counter_lr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clockgen|ALT_INV_s_counter_lr\(0),
	combout => \clockgen|s_counter_lr[0]~4_combout\);

-- Location: FF_X35_Y1_N32
\clockgen|s_counter_lr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clockgen|s_counter_lr[0]~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \clockgen|v_lr_clk_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_lr\(0));

-- Location: LABCELL_X35_Y1_N45
\clockgen|s_counter_lr[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_lr[1]~3_combout\ = ( \clockgen|s_counter_lr\(0) & ( !\clockgen|s_counter_lr\(1) $ (((!\clockgen|s_counter_bit\(0)) # (!\clockgen|s_bit_clk~q\))) ) ) # ( !\clockgen|s_counter_lr\(0) & ( \clockgen|s_counter_lr\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clockgen|ALT_INV_s_counter_bit\(0),
	datac => \clockgen|ALT_INV_s_bit_clk~q\,
	datad => \clockgen|ALT_INV_s_counter_lr\(1),
	dataf => \clockgen|ALT_INV_s_counter_lr\(0),
	combout => \clockgen|s_counter_lr[1]~3_combout\);

-- Location: FF_X35_Y1_N47
\clockgen|s_counter_lr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clockgen|s_counter_lr[1]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_lr\(1));

-- Location: LABCELL_X35_Y1_N42
\clockgen|s_counter_lr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_lr[2]~2_combout\ = ( \clockgen|s_counter_lr\(1) & ( !\clockgen|s_counter_lr\(2) $ (((!\clockgen|s_counter_lr\(0)) # ((!\clockgen|s_counter_bit\(0)) # (!\clockgen|s_bit_clk~q\)))) ) ) # ( !\clockgen|s_counter_lr\(1) & ( 
-- \clockgen|s_counter_lr\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clockgen|ALT_INV_s_counter_lr\(0),
	datab => \clockgen|ALT_INV_s_counter_bit\(0),
	datac => \clockgen|ALT_INV_s_bit_clk~q\,
	datad => \clockgen|ALT_INV_s_counter_lr\(2),
	dataf => \clockgen|ALT_INV_s_counter_lr\(1),
	combout => \clockgen|s_counter_lr[2]~2_combout\);

-- Location: FF_X35_Y1_N44
\clockgen|s_counter_lr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clockgen|s_counter_lr[2]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_lr\(2));

-- Location: LABCELL_X35_Y1_N18
\clockgen|s_counter_lr[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_lr[3]~1_combout\ = ( \clockgen|s_counter_lr\(3) & ( \clockgen|s_bit_clk~q\ & ( (!\clockgen|s_counter_bit\(0)) # ((!\clockgen|s_counter_lr\(1)) # ((!\clockgen|s_counter_lr\(0)) # (!\clockgen|s_counter_lr\(2)))) ) ) ) # ( 
-- !\clockgen|s_counter_lr\(3) & ( \clockgen|s_bit_clk~q\ & ( (\clockgen|s_counter_bit\(0) & (\clockgen|s_counter_lr\(1) & (\clockgen|s_counter_lr\(0) & \clockgen|s_counter_lr\(2)))) ) ) ) # ( \clockgen|s_counter_lr\(3) & ( !\clockgen|s_bit_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clockgen|ALT_INV_s_counter_bit\(0),
	datab => \clockgen|ALT_INV_s_counter_lr\(1),
	datac => \clockgen|ALT_INV_s_counter_lr\(0),
	datad => \clockgen|ALT_INV_s_counter_lr\(2),
	datae => \clockgen|ALT_INV_s_counter_lr\(3),
	dataf => \clockgen|ALT_INV_s_bit_clk~q\,
	combout => \clockgen|s_counter_lr[3]~1_combout\);

-- Location: FF_X35_Y1_N20
\clockgen|s_counter_lr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clockgen|s_counter_lr[3]~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_lr\(3));

-- Location: LABCELL_X35_Y1_N36
\clockgen|s_counter_lr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_counter_lr~0_combout\ = ( \clockgen|s_counter_lr\(4) & ( \clockgen|s_counter_lr\(1) & ( (!\clockgen|s_counter_lr\(0)) # ((!\clockgen|s_counter_lr\(3)) # (!\clockgen|s_counter_lr\(2))) ) ) ) # ( \clockgen|s_counter_lr\(4) & ( 
-- !\clockgen|s_counter_lr\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clockgen|ALT_INV_s_counter_lr\(0),
	datac => \clockgen|ALT_INV_s_counter_lr\(3),
	datad => \clockgen|ALT_INV_s_counter_lr\(2),
	datae => \clockgen|ALT_INV_s_counter_lr\(4),
	dataf => \clockgen|ALT_INV_s_counter_lr\(1),
	combout => \clockgen|s_counter_lr~0_combout\);

-- Location: FF_X35_Y1_N38
\clockgen|s_counter_lr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clockgen|s_counter_lr~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \clockgen|v_lr_clk_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_counter_lr\(4));

-- Location: LABCELL_X35_Y1_N9
\clockgen|s_lr_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_lr_clk~0_combout\ = ( !\clockgen|s_counter_lr\(3) & ( (!\clockgen|s_counter_lr\(1) & (!\clockgen|s_counter_lr\(2) & !\clockgen|s_counter_lr\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clockgen|ALT_INV_s_counter_lr\(1),
	datac => \clockgen|ALT_INV_s_counter_lr\(2),
	datad => \clockgen|ALT_INV_s_counter_lr\(4),
	dataf => \clockgen|ALT_INV_s_counter_lr\(3),
	combout => \clockgen|s_lr_clk~0_combout\);

-- Location: LABCELL_X35_Y1_N6
\clockgen|s_lr_clk~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockgen|s_lr_clk~1_combout\ = ( \clockgen|s_lr_clk~0_combout\ & ( !\clockgen|s_lr_clk~q\ $ (((!\clockgen|v_lr_clk_enable~0_combout\) # (\clockgen|s_counter_lr\(0)))) ) ) # ( !\clockgen|s_lr_clk~0_combout\ & ( \clockgen|s_lr_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clockgen|ALT_INV_v_lr_clk_enable~0_combout\,
	datac => \clockgen|ALT_INV_s_counter_lr\(0),
	datad => \clockgen|ALT_INV_s_lr_clk~q\,
	dataf => \clockgen|ALT_INV_s_lr_clk~0_combout\,
	combout => \clockgen|s_lr_clk~1_combout\);

-- Location: FF_X35_Y1_N8
\clockgen|s_lr_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clockgen|s_lr_clk~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockgen|s_lr_clk~q\);

-- Location: LABCELL_X35_Y1_N48
\i2out|s_current_lr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|s_current_lr~0_combout\ = ( !\clockgen|s_lr_clk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clockgen|ALT_INV_s_lr_clk~q\,
	combout => \i2out|s_current_lr~0_combout\);

-- Location: FF_X35_Y1_N50
\i2out|s_current_lr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	d => \i2out|s_current_lr~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|s_current_lr~q\);

-- Location: LABCELL_X36_Y1_N6
\i2out|counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|counter[0]~3_combout\ = ( \i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( (!\i2out|s_current_lr~q\ & (\i2out|counter\(2) & (\i2out|counter\(3) & \i2out|counter\(1)))) ) ) ) # ( !\i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( 
-- !\i2out|s_current_lr~q\ ) ) ) # ( \i2out|counter\(0) & ( !\clockgen|s_lr_clk~q\ & ( (\i2out|s_current_lr~q\ & (\i2out|counter\(2) & (\i2out|counter\(3) & \i2out|counter\(1)))) ) ) ) # ( !\i2out|counter\(0) & ( !\clockgen|s_lr_clk~q\ & ( 
-- \i2out|s_current_lr~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000110101010101010100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_s_current_lr~q\,
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2out|ALT_INV_counter\(3),
	datad => \i2out|ALT_INV_counter\(1),
	datae => \i2out|ALT_INV_counter\(0),
	dataf => \clockgen|ALT_INV_s_lr_clk~q\,
	combout => \i2out|counter[0]~3_combout\);

-- Location: FF_X36_Y1_N23
\i2out|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	asdata => \i2out|counter[0]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|counter\(0));

-- Location: LABCELL_X35_Y1_N24
\i2out|counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|counter[1]~2_combout\ = ( \i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( (!\i2out|s_current_lr~q\ & ((!\i2out|counter\(1)) # ((\i2out|counter\(2) & \i2out|counter\(3))))) ) ) ) # ( !\i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( 
-- (!\i2out|s_current_lr~q\ & \i2out|counter\(1)) ) ) ) # ( \i2out|counter\(0) & ( !\clockgen|s_lr_clk~q\ & ( (\i2out|s_current_lr~q\ & ((!\i2out|counter\(1)) # ((\i2out|counter\(2) & \i2out|counter\(3))))) ) ) ) # ( !\i2out|counter\(0) & ( 
-- !\clockgen|s_lr_clk~q\ & ( (\i2out|s_current_lr~q\ & \i2out|counter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000100000000101010101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_s_current_lr~q\,
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2out|ALT_INV_counter\(3),
	datad => \i2out|ALT_INV_counter\(1),
	datae => \i2out|ALT_INV_counter\(0),
	dataf => \clockgen|ALT_INV_s_lr_clk~q\,
	combout => \i2out|counter[1]~2_combout\);

-- Location: FF_X36_Y1_N50
\i2out|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	asdata => \i2out|counter[1]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|counter\(1));

-- Location: LABCELL_X35_Y1_N54
\i2out|counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|counter[2]~1_combout\ = ( \i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( (!\i2out|s_current_lr~q\ & ((!\i2out|counter\(2) & ((\i2out|counter\(1)))) # (\i2out|counter\(2) & ((!\i2out|counter\(1)) # (\i2out|counter\(3)))))) ) ) ) # ( 
-- !\i2out|counter\(0) & ( \clockgen|s_lr_clk~q\ & ( (\i2out|counter\(2) & !\i2out|s_current_lr~q\) ) ) ) # ( \i2out|counter\(0) & ( !\clockgen|s_lr_clk~q\ & ( (\i2out|s_current_lr~q\ & ((!\i2out|counter\(2) & ((\i2out|counter\(1)))) # (\i2out|counter\(2) & 
-- ((!\i2out|counter\(1)) # (\i2out|counter\(3)))))) ) ) ) # ( !\i2out|counter\(0) & ( !\clockgen|s_lr_clk~q\ & ( (\i2out|counter\(2) & \i2out|s_current_lr~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000110100110000001100000011000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(3),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2out|ALT_INV_s_current_lr~q\,
	datad => \i2out|ALT_INV_counter\(1),
	datae => \i2out|ALT_INV_counter\(0),
	dataf => \clockgen|ALT_INV_s_lr_clk~q\,
	combout => \i2out|counter[2]~1_combout\);

-- Location: FF_X35_Y1_N14
\i2out|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	asdata => \i2out|counter[2]~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|counter\(2));

-- Location: LABCELL_X36_Y1_N3
\i2out|counter[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|counter[3]~0_combout\ = ( !\i2out|s_current_lr~q\ & ( \clockgen|s_lr_clk~q\ & ( ((\i2out|counter\(2) & (\i2out|counter\(1) & \i2out|counter\(0)))) # (\i2out|counter\(3)) ) ) ) # ( \i2out|s_current_lr~q\ & ( !\clockgen|s_lr_clk~q\ & ( 
-- ((\i2out|counter\(2) & (\i2out|counter\(1) & \i2out|counter\(0)))) # (\i2out|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101011101010101010101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(3),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2out|ALT_INV_counter\(1),
	datad => \i2out|ALT_INV_counter\(0),
	datae => \i2out|ALT_INV_s_current_lr~q\,
	dataf => \clockgen|ALT_INV_s_lr_clk~q\,
	combout => \i2out|counter[3]~0_combout\);

-- Location: FF_X36_Y1_N32
\i2out|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	asdata => \i2out|counter[3]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|counter\(3));

-- Location: LABCELL_X36_Y1_N21
\i2out|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|DOUT~0_combout\ = ( \i2out|counter\(1) & ( (\i2out|counter\(2) & \i2out|counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2out|ALT_INV_counter\(2),
	datad => \i2out|ALT_INV_counter\(0),
	dataf => \i2out|ALT_INV_counter\(1),
	combout => \i2out|DOUT~0_combout\);

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

-- Location: CLKCTRL_G7
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

-- Location: LABCELL_X37_Y2_N9
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

-- Location: FF_X37_Y2_N11
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

-- Location: FF_X37_Y1_N53
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

-- Location: LABCELL_X37_Y1_N48
\i2sin|i2s_in~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|i2s_in~0_combout\ = ( \LR_CLK~input_o\ & ( !\i2sin|s_current_lr~q\ ) ) # ( !\LR_CLK~input_o\ & ( \i2sin|s_current_lr~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_s_current_lr~q\,
	datae => \ALT_INV_LR_CLK~input_o\,
	combout => \i2sin|i2s_in~0_combout\);

-- Location: FF_X37_Y1_N50
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

-- Location: LABCELL_X37_Y1_N15
\i2sin|DATA_R[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[15]~0_combout\ = ( !\i2sin|s_current_lr~q\ & ( (\i2sin|s_parallel_load~q\ & !\LR_CLK~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_s_parallel_load~q\,
	datac => \ALT_INV_LR_CLK~input_o\,
	dataf => \i2sin|ALT_INV_s_current_lr~q\,
	combout => \i2sin|DATA_R[15]~0_combout\);

-- Location: FF_X36_Y1_N56
\i2sin|DATA_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(0));

-- Location: LABCELL_X37_Y2_N6
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

-- Location: FF_X37_Y2_N7
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

-- Location: LABCELL_X36_Y3_N45
\i2sin|DATA_R[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[1]~feeder_combout\ = ( \i2sin|shift_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(1),
	combout => \i2sin|DATA_R[1]~feeder_combout\);

-- Location: FF_X36_Y3_N47
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(1));

-- Location: FF_X37_Y2_N49
\i2sin|shift_reg[2]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[2]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N12
\i2sin|DATA_R[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[2]~feeder_combout\ = ( \i2sin|shift_reg[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\,
	combout => \i2sin|DATA_R[2]~feeder_combout\);

-- Location: FF_X36_Y3_N13
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(2));

-- Location: FF_X37_Y2_N50
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

-- Location: LABCELL_X37_Y2_N51
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

-- Location: FF_X37_Y2_N52
\i2sin|shift_reg[3]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[3]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N37
\i2sin|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[3]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(4));

-- Location: FF_X36_Y3_N35
\i2sin|DATA_R[4]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(4));

-- Location: FF_X37_Y2_N41
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

-- Location: FF_X36_Y3_N46
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(5));

-- Location: FF_X37_Y2_N31
\i2sin|shift_reg[6]~DUPLICATE\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[6]~DUPLICATE_q\);

-- Location: FF_X36_Y1_N44
\i2sin|DATA_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[6]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(6));

-- Location: FF_X37_Y2_N34
\i2sin|shift_reg[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[6]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N30
\i2sin|DATA_R[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[7]~feeder_combout\ = ( \i2sin|shift_reg[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[7]~DUPLICATE_q\,
	combout => \i2sin|DATA_R[7]~feeder_combout\);

-- Location: FF_X36_Y3_N32
\i2sin|DATA_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_R[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(7));

-- Location: LABCELL_X36_Y1_N42
\i2out|Mux1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~30_combout\ = ( !\i2out|counter\(1) & ( (!\i2out|counter\(0) & (((\i2sin|DATA_R\(7) & ((!\i2out|counter\(2))))))) # (\i2out|counter\(0) & ((((\i2out|counter\(2)) # (\i2sin|DATA_R\(6)))))) ) ) # ( \i2out|counter\(1) & ( (!\i2out|counter\(0) & 
-- (((\i2sin|DATA_R\(5) & ((!\i2out|counter\(2))))))) # (\i2out|counter\(0) & ((((\i2out|counter\(2)))) # (\i2sin|DATA_R\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(0),
	datab => \i2sin|ALT_INV_DATA_R\(4),
	datac => \i2sin|ALT_INV_DATA_R\(5),
	datad => \i2sin|ALT_INV_DATA_R\(6),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2out|ALT_INV_counter\(2),
	datag => \i2sin|ALT_INV_DATA_R\(7),
	combout => \i2out|Mux1~30_combout\);

-- Location: LABCELL_X36_Y3_N42
\i2sin|DATA_R[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[3]~feeder_combout\ = ( \i2sin|shift_reg[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[3]~DUPLICATE_q\,
	combout => \i2sin|DATA_R[3]~feeder_combout\);

-- Location: FF_X36_Y3_N43
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(3));

-- Location: LABCELL_X36_Y1_N54
\i2out|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~12_combout\ = ( !\i2out|counter\(1) & ( ((!\i2out|counter\(2) & (((\i2out|Mux1~30_combout\)))) # (\i2out|counter\(2) & ((!\i2out|Mux1~30_combout\ & (\i2sin|DATA_R\(3))) # (\i2out|Mux1~30_combout\ & ((\i2sin|DATA_R\(2))))))) ) ) # ( 
-- \i2out|counter\(1) & ( (!\i2out|counter\(2) & ((((\i2out|Mux1~30_combout\))))) # (\i2out|counter\(2) & (((!\i2out|Mux1~30_combout\ & ((\i2sin|DATA_R\(1)))) # (\i2out|Mux1~30_combout\ & (\i2sin|DATA_R\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_DATA_R\(0),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_R\(1),
	datad => \i2sin|ALT_INV_DATA_R\(2),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2out|ALT_INV_Mux1~30_combout\,
	datag => \i2sin|ALT_INV_DATA_R\(3),
	combout => \i2out|Mux1~12_combout\);

-- Location: FF_X37_Y2_N35
\i2sin|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[6]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(7));

-- Location: LABCELL_X37_Y2_N54
\i2sin|shift_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[8]~feeder_combout\ = ( \i2sin|shift_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(7),
	combout => \i2sin|shift_reg[8]~feeder_combout\);

-- Location: FF_X37_Y2_N56
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

-- Location: FF_X36_Y1_N2
\i2sin|DATA_R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(8));

-- Location: FF_X37_Y2_N43
\i2sin|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(9));

-- Location: LABCELL_X36_Y3_N33
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

-- Location: FF_X36_Y3_N34
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(9));

-- Location: FF_X37_Y2_N13
\i2sin|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(9),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(10));

-- Location: FF_X36_Y3_N31
\i2sin|DATA_R[10]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(10));

-- Location: LABCELL_X37_Y2_N24
\i2sin|shift_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[11]~feeder_combout\ = ( \i2sin|shift_reg\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(10),
	combout => \i2sin|shift_reg[11]~feeder_combout\);

-- Location: FF_X37_Y2_N26
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

-- Location: FF_X37_Y2_N19
\i2sin|shift_reg[12]\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(12));

-- Location: LABCELL_X37_Y2_N57
\i2sin|shift_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[13]~feeder_combout\ = ( \i2sin|shift_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(12),
	combout => \i2sin|shift_reg[13]~feeder_combout\);

-- Location: FF_X37_Y2_N58
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

-- Location: LABCELL_X36_Y3_N15
\i2sin|DATA_R[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[13]~feeder_combout\ = ( \i2sin|shift_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(13),
	combout => \i2sin|DATA_R[13]~feeder_combout\);

-- Location: FF_X36_Y3_N17
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(13));

-- Location: FF_X36_Y1_N11
\i2sin|DATA_R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(12),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(12));

-- Location: LABCELL_X37_Y2_N0
\i2sin|shift_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[14]~feeder_combout\ = ( \i2sin|shift_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(13),
	combout => \i2sin|shift_reg[14]~feeder_combout\);

-- Location: FF_X37_Y2_N1
\i2sin|shift_reg[14]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[14]~DUPLICATE_q\);

-- Location: FF_X36_Y1_N14
\i2sin|DATA_R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[14]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(14));

-- Location: FF_X37_Y2_N4
\i2sin|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[14]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(15));

-- Location: FF_X36_Y3_N44
\i2sin|DATA_R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(15),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(15));

-- Location: LABCELL_X36_Y1_N12
\i2out|Mux1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~26_combout\ = ( !\i2out|counter\(1) & ( (!\i2out|counter\(0) & (!\i2out|counter\(2) & (\i2sin|DATA_R\(15)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_R\(14)))) # (\i2out|counter\(2)))) ) ) # ( \i2out|counter\(1) & ( (!\i2out|counter\(0) & 
-- (!\i2out|counter\(2) & (\i2sin|DATA_R\(13)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_R\(12)))) # (\i2out|counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(0),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_R\(13),
	datad => \i2sin|ALT_INV_DATA_R\(12),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2sin|ALT_INV_DATA_R\(14),
	datag => \i2sin|ALT_INV_DATA_R\(15),
	combout => \i2out|Mux1~26_combout\);

-- Location: LABCELL_X36_Y2_N15
\i2sin|DATA_R[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[11]~feeder_combout\ = ( \i2sin|shift_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(11),
	combout => \i2sin|DATA_R[11]~feeder_combout\);

-- Location: FF_X36_Y2_N17
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(11));

-- Location: LABCELL_X36_Y1_N48
\i2out|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~8_combout\ = ( !\i2out|counter\(1) & ( ((!\i2out|counter\(2) & (((\i2out|Mux1~26_combout\)))) # (\i2out|counter\(2) & ((!\i2out|Mux1~26_combout\ & (\i2sin|DATA_R\(11))) # (\i2out|Mux1~26_combout\ & ((\i2sin|DATA_R\(10))))))) ) ) # ( 
-- \i2out|counter\(1) & ( (!\i2out|counter\(2) & ((((\i2out|Mux1~26_combout\))))) # (\i2out|counter\(2) & (((!\i2out|Mux1~26_combout\ & ((\i2sin|DATA_R\(9)))) # (\i2out|Mux1~26_combout\ & (\i2sin|DATA_R\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_DATA_R\(8),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_R\(9),
	datad => \i2sin|ALT_INV_DATA_R\(10),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2out|ALT_INV_Mux1~26_combout\,
	datag => \i2sin|ALT_INV_DATA_R\(11),
	combout => \i2out|Mux1~8_combout\);

-- Location: LABCELL_X37_Y1_N21
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

-- Location: LABCELL_X37_Y1_N57
\i2sin|DATA_L[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[15]~0_combout\ = ( \i2sin|s_parallel_load~q\ & ( (\i2sin|s_current_lr~q\ & \LR_CLK~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_s_current_lr~q\,
	datab => \ALT_INV_LR_CLK~input_o\,
	dataf => \i2sin|ALT_INV_s_parallel_load~q\,
	combout => \i2sin|DATA_L[15]~0_combout\);

-- Location: FF_X37_Y1_N23
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(8));

-- Location: LABCELL_X37_Y1_N0
\i2sin|DATA_L[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[9]~feeder_combout\ = \i2sin|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(9),
	combout => \i2sin|DATA_L[9]~feeder_combout\);

-- Location: FF_X37_Y1_N1
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(9));

-- Location: FF_X37_Y1_N19
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(10));

-- Location: FF_X37_Y1_N2
\i2sin|DATA_L[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(13),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(13));

-- Location: LABCELL_X37_Y1_N3
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

-- Location: FF_X37_Y1_N5
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(12));

-- Location: FF_X37_Y2_N2
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

-- Location: FF_X36_Y1_N26
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(14));

-- Location: FF_X37_Y1_N37
\i2sin|DATA_L[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(15),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(15));

-- Location: LABCELL_X36_Y1_N30
\i2out|Mux1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~18_combout\ = ( !\i2out|counter\(1) & ( (!\i2out|counter\(0) & (!\i2out|counter\(2) & (\i2sin|DATA_L\(15)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_L\(14)))) # (\i2out|counter\(2)))) ) ) # ( \i2out|counter\(1) & ( (!\i2out|counter\(0) & 
-- (!\i2out|counter\(2) & (\i2sin|DATA_L\(13)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_L\(12)))) # (\i2out|counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(0),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_L\(13),
	datad => \i2sin|ALT_INV_DATA_L\(12),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2sin|ALT_INV_DATA_L\(14),
	datag => \i2sin|ALT_INV_DATA_L\(15),
	combout => \i2out|Mux1~18_combout\);

-- Location: FF_X37_Y1_N4
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(11));

-- Location: LABCELL_X36_Y1_N36
\i2out|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~0_combout\ = ( !\i2out|counter\(1) & ( ((!\i2out|counter\(2) & (((\i2out|Mux1~18_combout\)))) # (\i2out|counter\(2) & ((!\i2out|Mux1~18_combout\ & (\i2sin|DATA_L\(11))) # (\i2out|Mux1~18_combout\ & ((\i2sin|DATA_L\(10))))))) ) ) # ( 
-- \i2out|counter\(1) & ( (!\i2out|counter\(2) & ((((\i2out|Mux1~18_combout\))))) # (\i2out|counter\(2) & (((!\i2out|Mux1~18_combout\ & ((\i2sin|DATA_L\(9)))) # (\i2out|Mux1~18_combout\ & (\i2sin|DATA_L\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_DATA_L\(8),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_L\(9),
	datad => \i2sin|ALT_INV_DATA_L\(10),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2out|ALT_INV_Mux1~18_combout\,
	datag => \i2sin|ALT_INV_DATA_L\(11),
	combout => \i2out|Mux1~0_combout\);

-- Location: FF_X36_Y1_N38
\i2sin|DATA_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(0));

-- Location: LABCELL_X37_Y1_N6
\i2sin|DATA_L[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[1]~feeder_combout\ = \i2sin|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(1),
	combout => \i2sin|DATA_L[1]~feeder_combout\);

-- Location: FF_X37_Y1_N8
\i2sin|DATA_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(1));

-- Location: LABCELL_X37_Y1_N36
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

-- Location: FF_X37_Y1_N38
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(2));

-- Location: FF_X37_Y1_N10
\i2sin|DATA_L[5]\ : dffeas
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(5));

-- Location: FF_X37_Y2_N32
\i2sin|shift_reg[6]\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(6));

-- Location: LABCELL_X37_Y1_N9
\i2sin|DATA_L[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[6]~feeder_combout\ = ( \i2sin|shift_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(6),
	combout => \i2sin|DATA_L[6]~feeder_combout\);

-- Location: FF_X37_Y1_N11
\i2sin|DATA_L[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(6));

-- Location: FF_X37_Y1_N7
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(4));

-- Location: LABCELL_X37_Y1_N18
\i2sin|DATA_L[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[7]~feeder_combout\ = ( \i2sin|shift_reg[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[7]~DUPLICATE_q\,
	combout => \i2sin|DATA_L[7]~feeder_combout\);

-- Location: FF_X37_Y1_N20
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(7));

-- Location: LABCELL_X35_Y1_N30
\i2out|Mux1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~22_combout\ = ( !\i2out|counter\(1) & ( (!\i2out|counter\(0) & (!\i2out|counter\(2) & (\i2sin|DATA_L\(7)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_L\(6)))) # (\i2out|counter\(2)))) ) ) # ( \i2out|counter\(1) & ( (!\i2out|counter\(0) & 
-- (!\i2out|counter\(2) & (\i2sin|DATA_L\(5)))) # (\i2out|counter\(0) & ((((\i2sin|DATA_L\(4)))) # (\i2out|counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(0),
	datab => \i2out|ALT_INV_counter\(2),
	datac => \i2sin|ALT_INV_DATA_L\(5),
	datad => \i2sin|ALT_INV_DATA_L\(6),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2sin|ALT_INV_DATA_L\(4),
	datag => \i2sin|ALT_INV_DATA_L\(7),
	combout => \i2out|Mux1~22_combout\);

-- Location: FF_X37_Y2_N53
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

-- Location: FF_X37_Y1_N41
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(3));

-- Location: LABCELL_X35_Y1_N3
\i2out|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~4_combout\ = ( !\i2out|counter\(1) & ( (!\i2out|counter\(2) & ((((\i2out|Mux1~22_combout\))))) # (\i2out|counter\(2) & (((!\i2out|Mux1~22_combout\ & (\i2sin|DATA_L\(3))) # (\i2out|Mux1~22_combout\ & ((\i2sin|DATA_L\(2))))))) ) ) # ( 
-- \i2out|counter\(1) & ( (!\i2out|counter\(2) & ((((\i2out|Mux1~22_combout\))))) # (\i2out|counter\(2) & (((!\i2out|Mux1~22_combout\ & ((\i2sin|DATA_L\(1)))) # (\i2out|Mux1~22_combout\ & (\i2sin|DATA_L\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(2),
	datab => \i2sin|ALT_INV_DATA_L\(0),
	datac => \i2sin|ALT_INV_DATA_L\(1),
	datad => \i2sin|ALT_INV_DATA_L\(2),
	datae => \i2out|ALT_INV_counter\(1),
	dataf => \i2out|ALT_INV_Mux1~22_combout\,
	datag => \i2sin|ALT_INV_DATA_L\(3),
	combout => \i2out|Mux1~4_combout\);

-- Location: LABCELL_X36_Y1_N27
\i2out|Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~16_combout\ = ( \i2out|Mux1~0_combout\ & ( \i2out|Mux1~4_combout\ & ( (!\i2out|s_current_lr~q\) # ((!\i2out|counter\(3) & ((\i2out|Mux1~8_combout\))) # (\i2out|counter\(3) & (\i2out|Mux1~12_combout\))) ) ) ) # ( !\i2out|Mux1~0_combout\ & ( 
-- \i2out|Mux1~4_combout\ & ( (!\i2out|s_current_lr~q\ & (((\i2out|counter\(3))))) # (\i2out|s_current_lr~q\ & ((!\i2out|counter\(3) & ((\i2out|Mux1~8_combout\))) # (\i2out|counter\(3) & (\i2out|Mux1~12_combout\)))) ) ) ) # ( \i2out|Mux1~0_combout\ & ( 
-- !\i2out|Mux1~4_combout\ & ( (!\i2out|s_current_lr~q\ & (((!\i2out|counter\(3))))) # (\i2out|s_current_lr~q\ & ((!\i2out|counter\(3) & ((\i2out|Mux1~8_combout\))) # (\i2out|counter\(3) & (\i2out|Mux1~12_combout\)))) ) ) ) # ( !\i2out|Mux1~0_combout\ & ( 
-- !\i2out|Mux1~4_combout\ & ( (\i2out|s_current_lr~q\ & ((!\i2out|counter\(3) & ((\i2out|Mux1~8_combout\))) # (\i2out|counter\(3) & (\i2out|Mux1~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_s_current_lr~q\,
	datab => \i2out|ALT_INV_Mux1~12_combout\,
	datac => \i2out|ALT_INV_counter\(3),
	datad => \i2out|ALT_INV_Mux1~8_combout\,
	datae => \i2out|ALT_INV_Mux1~0_combout\,
	dataf => \i2out|ALT_INV_Mux1~4_combout\,
	combout => \i2out|Mux1~16_combout\);

-- Location: LABCELL_X36_Y1_N18
\i2out|Mux1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2out|Mux1~17_combout\ = ( \i2out|Mux1~16_combout\ & ( (!\i2out|counter\(3)) # ((!\i2out|DOUT~0_combout\) # (!\clockgen|s_lr_clk~q\ $ (\i2out|s_current_lr~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111010111111111111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2out|ALT_INV_counter\(3),
	datab => \clockgen|ALT_INV_s_lr_clk~q\,
	datac => \i2out|ALT_INV_s_current_lr~q\,
	datad => \i2out|ALT_INV_DOUT~0_combout\,
	dataf => \i2out|ALT_INV_Mux1~16_combout\,
	combout => \i2out|Mux1~17_combout\);

-- Location: FF_X36_Y1_N20
\i2out|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockgen|ALT_INV_s_bit_clk~q\,
	d => \i2out|Mux1~17_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2out|DOUT~q\);

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

-- Location: FF_X50_Y2_N14
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

-- Location: LABCELL_X50_Y2_N0
\spi|SDATA_register[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|SDATA_register[1]~feeder_combout\ = ( \spi|SDATA_register\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi|ALT_INV_SDATA_register\(0),
	combout => \spi|SDATA_register[1]~feeder_combout\);

-- Location: FF_X50_Y2_N2
\spi|SDATA_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spi|SDATA_register[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(1));

-- Location: FF_X50_Y2_N26
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

-- Location: LABCELL_X50_Y2_N6
\spi|SDATA_register[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|SDATA_register[3]~feeder_combout\ = ( \spi|SDATA_register\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|SDATA_register[3]~feeder_combout\);

-- Location: FF_X50_Y2_N8
\spi|SDATA_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spi|SDATA_register[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(3));

-- Location: LABCELL_X50_Y2_N48
\spi|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux6~0_combout\ = ( \spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(1) & (!\spi|SDATA_register\(0) $ (\spi|SDATA_register\(3)))) ) ) # ( !\spi|SDATA_register\(2) & ( (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) $ 
-- (\spi|SDATA_register\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux6~0_combout\);

-- Location: LABCELL_X50_Y2_N51
\spi|dig0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(0) = ( \spi|dig0\(0) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux6~0_combout\))) ) ) # ( !\spi|dig0\(0) & ( (\spi|Mux6~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(0),
	combout => \spi|dig0\(0));

-- Location: LABCELL_X50_Y2_N21
\spi|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux5~0_combout\ = ( \spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(1) & (!\spi|SDATA_register\(0) $ (!\spi|SDATA_register\(3)))) # (\spi|SDATA_register\(1) & ((!\spi|SDATA_register\(0)) # (\spi|SDATA_register\(3)))) ) ) # ( 
-- !\spi|SDATA_register\(2) & ( (\spi|SDATA_register\(1) & (\spi|SDATA_register\(0) & \spi|SDATA_register\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(1),
	datac => \spi|ALT_INV_SDATA_register\(0),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux5~0_combout\);

-- Location: LABCELL_X50_Y2_N18
\spi|dig0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(1) = ( \spi|Mux5~0_combout\ & ( (\reset~input_o\ & ((\CS~input_o\) # (\spi|dig0\(1)))) ) ) # ( !\spi|Mux5~0_combout\ & ( (\reset~input_o\ & (\spi|dig0\(1) & !\CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_dig0\(1),
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_Mux5~0_combout\,
	combout => \spi|dig0\(1));

-- Location: LABCELL_X50_Y2_N57
\spi|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux4~0_combout\ = ( \spi|SDATA_register\(2) & ( (\spi|SDATA_register\(3) & ((!\spi|SDATA_register\(0)) # (\spi|SDATA_register\(1)))) ) ) # ( !\spi|SDATA_register\(2) & ( (\spi|SDATA_register\(1) & (!\spi|SDATA_register\(0) & 
-- !\spi|SDATA_register\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(1),
	datac => \spi|ALT_INV_SDATA_register\(0),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux4~0_combout\);

-- Location: LABCELL_X50_Y2_N45
\spi|dig0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(2) = ( \spi|Mux4~0_combout\ & ( (\reset~input_o\ & ((\spi|dig0\(2)) # (\CS~input_o\))) ) ) # ( !\spi|Mux4~0_combout\ & ( (!\CS~input_o\ & (\reset~input_o\ & \spi|dig0\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CS~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig0\(2),
	dataf => \spi|ALT_INV_Mux4~0_combout\,
	combout => \spi|dig0\(2));

-- Location: LABCELL_X50_Y2_N36
\spi|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux3~0_combout\ = ( \spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) & !\spi|SDATA_register\(3))) # (\spi|SDATA_register\(0) & (\spi|SDATA_register\(1))) ) ) # ( !\spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(0) 
-- & (\spi|SDATA_register\(1) & \spi|SDATA_register\(3))) # (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) & !\spi|SDATA_register\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux3~0_combout\);

-- Location: LABCELL_X50_Y2_N39
\spi|dig0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(3) = ( \spi|Mux3~0_combout\ & ( (\reset~input_o\ & ((\CS~input_o\) # (\spi|dig0\(3)))) ) ) # ( !\spi|Mux3~0_combout\ & ( (\reset~input_o\ & (\spi|dig0\(3) & !\CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_dig0\(3),
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_Mux3~0_combout\,
	combout => \spi|dig0\(3));

-- Location: LABCELL_X50_Y2_N42
\spi|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux2~0_combout\ = ( \spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(3) & ((!\spi|SDATA_register\(1)) # (\spi|SDATA_register\(0)))) ) ) # ( !\spi|SDATA_register\(2) & ( (\spi|SDATA_register\(0) & ((!\spi|SDATA_register\(1)) # 
-- (!\spi|SDATA_register\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux2~0_combout\);

-- Location: LABCELL_X50_Y2_N15
\spi|dig0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(4) = ( \CS~input_o\ & ( \spi|Mux2~0_combout\ & ( \reset~input_o\ ) ) ) # ( !\CS~input_o\ & ( \spi|Mux2~0_combout\ & ( (\reset~input_o\ & \spi|dig0\(4)) ) ) ) # ( !\CS~input_o\ & ( !\spi|Mux2~0_combout\ & ( (\reset~input_o\ & \spi|dig0\(4)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_dig0\(4),
	datae => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_Mux2~0_combout\,
	combout => \spi|dig0\(4));

-- Location: LABCELL_X50_Y2_N27
\spi|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux1~0_combout\ = ( \spi|SDATA_register\(2) & ( (\spi|SDATA_register\(0) & (!\spi|SDATA_register\(1) $ (!\spi|SDATA_register\(3)))) ) ) # ( !\spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(3) & ((\spi|SDATA_register\(0)) # 
-- (\spi|SDATA_register\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_SDATA_register\(1),
	datab => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux1~0_combout\);

-- Location: LABCELL_X50_Y2_N33
\spi|dig0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(5) = ( \spi|dig0\(5) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux1~0_combout\))) ) ) # ( !\spi|dig0\(5) & ( (\spi|Mux1~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig0\(5),
	combout => \spi|dig0\(5));

-- Location: LABCELL_X50_Y2_N30
\spi|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux0~0_combout\ = ( \spi|SDATA_register\(2) & ( (!\spi|SDATA_register\(0) & ((!\spi|SDATA_register\(3)) # (\spi|SDATA_register\(1)))) # (\spi|SDATA_register\(0) & ((!\spi|SDATA_register\(1)) # (\spi|SDATA_register\(3)))) ) ) # ( 
-- !\spi|SDATA_register\(2) & ( (\spi|SDATA_register\(3)) # (\spi|SDATA_register\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111100001111111111110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(0),
	datac => \spi|ALT_INV_SDATA_register\(1),
	datad => \spi|ALT_INV_SDATA_register\(3),
	dataf => \spi|ALT_INV_SDATA_register\(2),
	combout => \spi|Mux0~0_combout\);

-- Location: LABCELL_X50_Y2_N54
\spi|dig0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig0\(6) = ( \CS~input_o\ & ( (!\spi|Mux0~0_combout\) # (!\reset~input_o\) ) ) # ( !\CS~input_o\ & ( (!\reset~input_o\) # (\spi|dig0\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig0\(6),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig0\(6));

-- Location: FF_X51_Y2_N14
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

-- Location: LABCELL_X51_Y2_N6
\spi|SDATA_register[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|SDATA_register[5]~feeder_combout\ = ( \spi|SDATA_register\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi|ALT_INV_SDATA_register\(4),
	combout => \spi|SDATA_register[5]~feeder_combout\);

-- Location: FF_X51_Y2_N8
\spi|SDATA_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spi|SDATA_register[5]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|SDATA_register\(5));

-- Location: FF_X51_Y2_N2
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

-- Location: FF_X51_Y2_N59
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

-- Location: LABCELL_X51_Y2_N36
\spi|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux13~0_combout\ = ( !\spi|SDATA_register\(5) & ( \spi|SDATA_register\(6) & ( !\spi|SDATA_register\(4) $ (\spi|SDATA_register\(7)) ) ) ) # ( \spi|SDATA_register\(5) & ( !\spi|SDATA_register\(6) & ( (\spi|SDATA_register\(4) & \spi|SDATA_register\(7)) 
-- ) ) ) # ( !\spi|SDATA_register\(5) & ( !\spi|SDATA_register\(6) & ( (\spi|SDATA_register\(4) & !\spi|SDATA_register\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000011001111001100001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(4),
	datad => \spi|ALT_INV_SDATA_register\(7),
	datae => \spi|ALT_INV_SDATA_register\(5),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux13~0_combout\);

-- Location: LABCELL_X51_Y2_N48
\spi|dig1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(0) = ( \spi|dig1\(0) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux13~0_combout\))) ) ) # ( !\spi|dig1\(0) & ( (\spi|Mux13~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(0),
	combout => \spi|dig1\(0));

-- Location: LABCELL_X51_Y2_N51
\spi|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux12~0_combout\ = ( \spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(5) & (!\spi|SDATA_register\(4) $ (!\spi|SDATA_register\(7)))) # (\spi|SDATA_register\(5) & ((!\spi|SDATA_register\(4)) # (\spi|SDATA_register\(7)))) ) ) # ( 
-- !\spi|SDATA_register\(6) & ( (\spi|SDATA_register\(5) & (\spi|SDATA_register\(4) & \spi|SDATA_register\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(4),
	datad => \spi|ALT_INV_SDATA_register\(7),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux12~0_combout\);

-- Location: LABCELL_X51_Y2_N45
\spi|dig1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(1) = ( \CS~input_o\ & ( (\spi|Mux12~0_combout\ & \reset~input_o\) ) ) # ( !\CS~input_o\ & ( (\reset~input_o\ & \spi|dig1\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \spi|ALT_INV_dig1\(1),
	dataf => \ALT_INV_CS~input_o\,
	combout => \spi|dig1\(1));

-- Location: LABCELL_X51_Y2_N3
\spi|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux11~0_combout\ = ( \spi|SDATA_register\(5) & ( \spi|SDATA_register\(6) & ( \spi|SDATA_register\(7) ) ) ) # ( !\spi|SDATA_register\(5) & ( \spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(4) & \spi|SDATA_register\(7)) ) ) ) # ( 
-- \spi|SDATA_register\(5) & ( !\spi|SDATA_register\(6) & ( (!\spi|SDATA_register\(4) & !\spi|SDATA_register\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(4),
	datac => \spi|ALT_INV_SDATA_register\(7),
	datae => \spi|ALT_INV_SDATA_register\(5),
	dataf => \spi|ALT_INV_SDATA_register\(6),
	combout => \spi|Mux11~0_combout\);

-- Location: LABCELL_X51_Y2_N27
\spi|dig1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(2) = ( \spi|dig1\(2) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux11~0_combout\))) ) ) # ( !\spi|dig1\(2) & ( (\spi|Mux11~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(2),
	combout => \spi|dig1\(2));

-- Location: LABCELL_X51_Y2_N18
\spi|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux10~0_combout\ = ( \spi|SDATA_register\(7) & ( (\spi|SDATA_register\(5) & (!\spi|SDATA_register\(4) $ (\spi|SDATA_register\(6)))) ) ) # ( !\spi|SDATA_register\(7) & ( (!\spi|SDATA_register\(4) & (\spi|SDATA_register\(6) & !\spi|SDATA_register\(5))) 
-- # (\spi|SDATA_register\(4) & (!\spi|SDATA_register\(6) $ (\spi|SDATA_register\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(4),
	datac => \spi|ALT_INV_SDATA_register\(6),
	datad => \spi|ALT_INV_SDATA_register\(5),
	dataf => \spi|ALT_INV_SDATA_register\(7),
	combout => \spi|Mux10~0_combout\);

-- Location: LABCELL_X51_Y2_N21
\spi|dig1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(3) = ( \spi|dig1\(3) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux10~0_combout\))) ) ) # ( !\spi|dig1\(3) & ( (\spi|Mux10~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(3),
	combout => \spi|dig1\(3));

-- Location: LABCELL_X51_Y2_N24
\spi|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux9~0_combout\ = ( \spi|SDATA_register\(7) & ( (\spi|SDATA_register\(4) & (!\spi|SDATA_register\(6) & !\spi|SDATA_register\(5))) ) ) # ( !\spi|SDATA_register\(7) & ( ((\spi|SDATA_register\(6) & !\spi|SDATA_register\(5))) # (\spi|SDATA_register\(4)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(4),
	datac => \spi|ALT_INV_SDATA_register\(6),
	datad => \spi|ALT_INV_SDATA_register\(5),
	dataf => \spi|ALT_INV_SDATA_register\(7),
	combout => \spi|Mux9~0_combout\);

-- Location: LABCELL_X51_Y2_N33
\spi|dig1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(4) = ( \spi|dig1\(4) & ( (\reset~input_o\ & ((!\CS~input_o\) # (\spi|Mux9~0_combout\))) ) ) # ( !\spi|dig1\(4) & ( (\spi|Mux9~0_combout\ & (\reset~input_o\ & \CS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi|ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_dig1\(4),
	combout => \spi|dig1\(4));

-- Location: LABCELL_X51_Y2_N42
\spi|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux8~0_combout\ = ( \spi|SDATA_register\(7) & ( (!\spi|SDATA_register\(5) & (\spi|SDATA_register\(6) & \spi|SDATA_register\(4))) ) ) # ( !\spi|SDATA_register\(7) & ( (!\spi|SDATA_register\(5) & (!\spi|SDATA_register\(6) & \spi|SDATA_register\(4))) # 
-- (\spi|SDATA_register\(5) & ((!\spi|SDATA_register\(6)) # (\spi|SDATA_register\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(6),
	datad => \spi|ALT_INV_SDATA_register\(4),
	dataf => \spi|ALT_INV_SDATA_register\(7),
	combout => \spi|Mux8~0_combout\);

-- Location: LABCELL_X51_Y2_N54
\spi|dig1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(5) = ( \spi|dig1\(5) & ( \spi|Mux8~0_combout\ & ( \reset~input_o\ ) ) ) # ( !\spi|dig1\(5) & ( \spi|Mux8~0_combout\ & ( (\reset~input_o\ & \CS~input_o\) ) ) ) # ( \spi|dig1\(5) & ( !\spi|Mux8~0_combout\ & ( (\reset~input_o\ & !\CS~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_CS~input_o\,
	datae => \spi|ALT_INV_dig1\(5),
	dataf => \spi|ALT_INV_Mux8~0_combout\,
	combout => \spi|dig1\(5));

-- Location: LABCELL_X51_Y2_N30
\spi|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|Mux7~0_combout\ = ( \spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(5) $ (!\spi|SDATA_register\(6))) # (\spi|SDATA_register\(7)) ) ) # ( !\spi|SDATA_register\(4) & ( (!\spi|SDATA_register\(6) $ (!\spi|SDATA_register\(7))) # 
-- (\spi|SDATA_register\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111110011001111111111001100111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi|ALT_INV_SDATA_register\(5),
	datac => \spi|ALT_INV_SDATA_register\(6),
	datad => \spi|ALT_INV_SDATA_register\(7),
	dataf => \spi|ALT_INV_SDATA_register\(4),
	combout => \spi|Mux7~0_combout\);

-- Location: LABCELL_X51_Y2_N15
\spi|dig1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi|dig1\(6) = ( \spi|Mux7~0_combout\ & ( (!\reset~input_o\) # ((\spi|dig1\(6) & !\CS~input_o\)) ) ) # ( !\spi|Mux7~0_combout\ & ( (!\reset~input_o\) # ((\CS~input_o\) # (\spi|dig1\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \spi|ALT_INV_dig1\(6),
	datad => \ALT_INV_CS~input_o\,
	dataf => \spi|ALT_INV_Mux7~0_combout\,
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

-- Location: FF_X37_Y3_N17
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

-- Location: FF_X37_Y3_N41
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

-- Location: LABCELL_X37_Y3_N6
\audioout|Bcount~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~5_combout\ = ( !\audioout|Bcount\(0) & ( \audioout|dack1~q\ ) ) # ( !\audioout|Bcount\(0) & ( !\audioout|dack1~q\ & ( !\audioout|dack0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_dack0~q\,
	datae => \audioout|ALT_INV_Bcount\(0),
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

-- Location: FF_X37_Y3_N47
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

-- Location: FF_X37_Y3_N20
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

-- Location: LABCELL_X37_Y3_N24
\audioout|Bcount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount[4]~1_combout\ = ( !\audioout|bck0~q\ & ( \audioout|dack1~q\ & ( \audioout|bck1~q\ ) ) ) # ( \audioout|bck0~q\ & ( !\audioout|dack1~q\ & ( \audioout|dack0~q\ ) ) ) # ( !\audioout|bck0~q\ & ( !\audioout|dack1~q\ & ( (\audioout|dack0~q\) # 
-- (\audioout|bck1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001100110011001101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_bck1~q\,
	datab => \audioout|ALT_INV_dack0~q\,
	datae => \audioout|ALT_INV_bck0~q\,
	dataf => \audioout|ALT_INV_dack1~q\,
	combout => \audioout|Bcount[4]~1_combout\);

-- Location: FF_X37_Y3_N7
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
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(0));

-- Location: LABCELL_X36_Y2_N48
\audioout|LRDATA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[11]~feeder_combout\ = ( \i2sin|DATA_R\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(11),
	combout => \audioout|LRDATA[11]~feeder_combout\);

-- Location: LABCELL_X37_Y3_N0
\audioout|DACData_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|DACData_reg~0_combout\ = ( !\audioout|dack1~q\ & ( \audioout|dack0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_dack0~q\,
	dataf => \audioout|ALT_INV_dack1~q\,
	combout => \audioout|DACData_reg~0_combout\);

-- Location: FF_X36_Y2_N50
\audioout|LRDATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(11));

-- Location: FF_X36_Y3_N56
\audioout|LRDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(8));

-- Location: FF_X37_Y3_N8
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
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount[0]~DUPLICATE_q\);

-- Location: FF_X37_Y3_N53
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
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(1));

-- Location: LABCELL_X37_Y3_N51
\audioout|Bcount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~4_combout\ = ( \audioout|dack0~q\ & ( (\audioout|dack1~q\ & (!\audioout|Bcount[0]~DUPLICATE_q\ $ (!\audioout|Bcount\(1)))) ) ) # ( !\audioout|dack0~q\ & ( !\audioout|Bcount[0]~DUPLICATE_q\ $ (!\audioout|Bcount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack1~q\,
	datac => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datad => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_dack0~q\,
	combout => \audioout|Bcount~4_combout\);

-- Location: FF_X37_Y3_N52
\audioout|Bcount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|Bcount~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N48
\audioout|Bcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~3_combout\ = ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|dack1~q\ & (!\audioout|dack0~q\ & (!\audioout|Bcount[0]~DUPLICATE_q\ $ (!\audioout|Bcount\(2))))) # (\audioout|dack1~q\ & (!\audioout|Bcount[0]~DUPLICATE_q\ $ 
-- (((!\audioout|Bcount\(2)))))) ) ) # ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (\audioout|Bcount\(2) & ((!\audioout|dack0~q\) # (\audioout|dack1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100110001110001000011000111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack1~q\,
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_dack0~q\,
	datad => \audioout|ALT_INV_Bcount\(2),
	dataf => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	combout => \audioout|Bcount~3_combout\);

-- Location: FF_X37_Y3_N50
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
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(2));

-- Location: FF_X36_Y3_N23
\audioout|LRDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(9),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(9));

-- Location: FF_X36_Y3_N7
\audioout|LRDATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(10),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(10));

-- Location: LABCELL_X36_Y3_N6
\audioout|Mux13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~21_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(11)))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(10) & (\audioout|Bcount\(2)))))) ) ) # ( \audioout|Bcount\(1) & ( 
-- (!\audioout|Bcount\(0) & ((((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(9)))))) # (\audioout|Bcount\(0) & (((\audioout|LRDATA\(8) & (\audioout|Bcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101000100111101010100000010110101010001001111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(0),
	datab => \audioout|ALT_INV_LRDATA\(11),
	datac => \audioout|ALT_INV_LRDATA\(8),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(9),
	datag => \audioout|ALT_INV_LRDATA\(10),
	combout => \audioout|Mux13~21_combout\);

-- Location: FF_X36_Y3_N37
\audioout|LRDATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(13),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(13));

-- Location: LABCELL_X37_Y1_N12
\audioout|LRDATA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[12]~feeder_combout\ = ( \i2sin|DATA_R\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(12),
	combout => \audioout|LRDATA[12]~feeder_combout\);

-- Location: FF_X37_Y1_N14
\audioout|LRDATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(12));

-- Location: LABCELL_X36_Y3_N48
\audioout|LRDATA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[15]~feeder_combout\ = ( \i2sin|DATA_R\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(15),
	combout => \audioout|LRDATA[15]~feeder_combout\);

-- Location: FF_X36_Y3_N50
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

-- Location: FF_X37_Y1_N58
\audioout|LRDATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(14));

-- Location: LABCELL_X36_Y3_N36
\audioout|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~4_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Mux13~21_combout\ & (((\audioout|LRDATA\(14) & (!\audioout|Bcount\(2)))))) # (\audioout|Mux13~21_combout\ & ((((\audioout|LRDATA\(15)) # (\audioout|Bcount\(2)))))) ) ) # ( 
-- \audioout|Bcount\(1) & ( (!\audioout|Mux13~21_combout\ & (((\audioout|LRDATA\(12) & (!\audioout|Bcount\(2)))))) # (\audioout|Mux13~21_combout\ & ((((\audioout|Bcount\(2)))) # (\audioout|LRDATA\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000110110101010101011111010101010001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~21_combout\,
	datab => \audioout|ALT_INV_LRDATA\(13),
	datac => \audioout|ALT_INV_LRDATA\(12),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(15),
	datag => \audioout|ALT_INV_LRDATA\(14),
	combout => \audioout|Mux13~4_combout\);

-- Location: LABCELL_X37_Y3_N42
\audioout|Bcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~0_combout\ = ( \audioout|Bcount[1]~DUPLICATE_q\ & ( \audioout|dack1~q\ & ( !\audioout|Bcount\(3) $ (((!\audioout|Bcount[0]~DUPLICATE_q\) # (!\audioout|Bcount\(2)))) ) ) ) # ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( \audioout|dack1~q\ & ( 
-- \audioout|Bcount\(3) ) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( !\audioout|dack1~q\ & ( (!\audioout|dack0~q\ & (!\audioout|Bcount\(3) $ (((!\audioout|Bcount[0]~DUPLICATE_q\) # (!\audioout|Bcount\(2)))))) ) ) ) # ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( 
-- !\audioout|dack1~q\ & ( (\audioout|Bcount\(3) & !\audioout|dack0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101100000000001010101010101010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(3),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_Bcount\(2),
	datad => \audioout|ALT_INV_dack0~q\,
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_dack1~q\,
	combout => \audioout|Bcount~0_combout\);

-- Location: FF_X37_Y3_N26
\audioout|Bcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|Bcount~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(3));

-- Location: LABCELL_X37_Y3_N30
\audioout|Bcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~2_combout\ = ( \audioout|Bcount\(4) & ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|DACData_reg~0_combout\ & ((!\audioout|Bcount\(2)) # ((!\audioout|Bcount\(3)) # (!\audioout|Bcount[0]~DUPLICATE_q\)))) ) ) ) # ( !\audioout|Bcount\(4) 
-- & ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|DACData_reg~0_combout\ & (\audioout|Bcount\(2) & (\audioout|Bcount\(3) & \audioout|Bcount[0]~DUPLICATE_q\))) ) ) ) # ( \audioout|Bcount\(4) & ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( 
-- !\audioout|DACData_reg~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_DACData_reg~0_combout\,
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_Bcount\(3),
	datad => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datae => \audioout|ALT_INV_Bcount\(4),
	dataf => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	combout => \audioout|Bcount~2_combout\);

-- Location: FF_X37_Y3_N32
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
	ena => \audioout|Bcount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|Bcount\(4));

-- Location: FF_X36_Y3_N58
\audioout|LRDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(0));

-- Location: FF_X36_Y3_N49
\audioout|LRDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(3));

-- Location: FF_X36_Y3_N20
\audioout|LRDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(1),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(1));

-- Location: FF_X36_Y3_N25
\audioout|LRDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(2));

-- Location: LABCELL_X36_Y3_N24
\audioout|Mux13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~17_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount\(0) & ((!\audioout|Bcount\(2)) # (((\audioout|LRDATA\(3)))))) # (\audioout|Bcount\(0) & (\audioout|Bcount\(2) & (\audioout|LRDATA\(2)))) ) ) # ( \audioout|Bcount\(1) & ( 
-- (!\audioout|Bcount\(0) & ((!\audioout|Bcount\(2)) # (((\audioout|LRDATA\(1)))))) # (\audioout|Bcount\(0) & (\audioout|Bcount\(2) & (\audioout|LRDATA\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100110101011100010011000100110001001101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(0),
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_LRDATA\(0),
	datad => \audioout|ALT_INV_LRDATA\(3),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(1),
	datag => \audioout|ALT_INV_LRDATA\(2),
	combout => \audioout|Mux13~17_combout\);

-- Location: LABCELL_X36_Y3_N57
\audioout|LRDATA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[4]~feeder_combout\ = ( \i2sin|DATA_R\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(4),
	combout => \audioout|LRDATA[4]~feeder_combout\);

-- Location: FF_X36_Y3_N59
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

-- Location: LABCELL_X36_Y3_N51
\audioout|LRDATA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[5]~feeder_combout\ = ( \i2sin|DATA_R\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(5),
	combout => \audioout|LRDATA[5]~feeder_combout\);

-- Location: FF_X36_Y3_N52
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

-- Location: LABCELL_X36_Y3_N54
\audioout|LRDATA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[7]~feeder_combout\ = ( \i2sin|DATA_R\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(7),
	combout => \audioout|LRDATA[7]~feeder_combout\);

-- Location: FF_X36_Y3_N55
\audioout|LRDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(7));

-- Location: FF_X36_Y3_N2
\audioout|LRDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(6));

-- Location: LABCELL_X36_Y3_N0
\audioout|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~0_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Mux13~17_combout\ & (!\audioout|Bcount\(2) & (\audioout|LRDATA\(6)))) # (\audioout|Mux13~17_combout\ & ((((\audioout|LRDATA\(7)))) # (\audioout|Bcount\(2)))) ) ) # ( \audioout|Bcount\(1) 
-- & ( (!\audioout|Mux13~17_combout\ & (!\audioout|Bcount\(2) & (\audioout|LRDATA\(4)))) # (\audioout|Mux13~17_combout\ & ((((\audioout|LRDATA\(5)))) # (\audioout|Bcount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~17_combout\,
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_LRDATA\(4),
	datad => \audioout|ALT_INV_LRDATA\(5),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(7),
	datag => \audioout|ALT_INV_LRDATA\(6),
	combout => \audioout|Mux13~0_combout\);

-- Location: LABCELL_X37_Y1_N24
\audioout|LRDATA[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[23]~feeder_combout\ = ( \i2sin|DATA_L\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(7),
	combout => \audioout|LRDATA[23]~feeder_combout\);

-- Location: FF_X37_Y1_N25
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

-- Location: LABCELL_X37_Y1_N33
\audioout|LRDATA[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[21]~feeder_combout\ = ( \i2sin|DATA_L\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(5),
	combout => \audioout|LRDATA[21]~feeder_combout\);

-- Location: FF_X37_Y1_N34
\audioout|LRDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[21]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(21));

-- Location: FF_X37_Y1_N29
\audioout|LRDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(4),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(20));

-- Location: LABCELL_X37_Y1_N30
\audioout|LRDATA[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[17]~feeder_combout\ = ( \i2sin|DATA_L\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(1),
	combout => \audioout|LRDATA[17]~feeder_combout\);

-- Location: FF_X37_Y1_N31
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

-- Location: LABCELL_X36_Y3_N18
\audioout|LRDATA[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[16]~feeder_combout\ = ( \i2sin|DATA_L\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(0),
	combout => \audioout|LRDATA[16]~feeder_combout\);

-- Location: FF_X36_Y3_N19
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

-- Location: LABCELL_X37_Y1_N27
\audioout|LRDATA[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[19]~feeder_combout\ = ( \i2sin|DATA_L\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(3),
	combout => \audioout|LRDATA[19]~feeder_combout\);

-- Location: FF_X37_Y1_N28
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

-- Location: FF_X37_Y3_N56
\audioout|LRDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(2),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(18));

-- Location: LABCELL_X37_Y3_N54
\audioout|Mux13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~25_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(19))))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(18) & ((\audioout|Bcount\(2)))))) ) 
-- ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount[0]~DUPLICATE_q\ & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(17)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(16) & ((\audioout|Bcount\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011001100110011001100110000000011110011110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(17),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_LRDATA\(16),
	datad => \audioout|ALT_INV_LRDATA\(19),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(18),
	combout => \audioout|Mux13~25_combout\);

-- Location: FF_X37_Y1_N43
\audioout|LRDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(6),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(22));

-- Location: LABCELL_X37_Y1_N42
\audioout|Mux13~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~8_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( ((!\audioout|Mux13~25_combout\ & (((\audioout|LRDATA\(22) & !\audioout|Bcount\(2))))) # (\audioout|Mux13~25_combout\ & (((\audioout|Bcount\(2))) # (\audioout|LRDATA\(23))))) ) ) # ( 
-- \audioout|Bcount[1]~DUPLICATE_q\ & ( ((!\audioout|Mux13~25_combout\ & (((\audioout|LRDATA\(20) & !\audioout|Bcount\(2))))) # (\audioout|Mux13~25_combout\ & (((\audioout|Bcount\(2))) # (\audioout|LRDATA\(21))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(23),
	datab => \audioout|ALT_INV_LRDATA\(21),
	datac => \audioout|ALT_INV_LRDATA\(20),
	datad => \audioout|ALT_INV_Mux13~25_combout\,
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(22),
	combout => \audioout|Mux13~8_combout\);

-- Location: FF_X37_Y1_N26
\audioout|LRDATA[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(11),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(27));

-- Location: FF_X37_Y1_N32
\audioout|LRDATA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(8),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(24));

-- Location: FF_X37_Y1_N35
\audioout|LRDATA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(9),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(25));

-- Location: LABCELL_X37_Y1_N54
\audioout|LRDATA[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[26]~feeder_combout\ = ( \i2sin|DATA_L\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(10),
	combout => \audioout|LRDATA[26]~feeder_combout\);

-- Location: FF_X37_Y1_N55
\audioout|LRDATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[26]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(26));

-- Location: LABCELL_X37_Y3_N18
\audioout|Mux13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~29_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount[0]~DUPLICATE_q\ & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(27)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(26) & 
-- ((\audioout|Bcount\(2))))))) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(25))))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(24) & 
-- ((\audioout|Bcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011001100110011001100110001000111010001110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(27),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_LRDATA\(24),
	datad => \audioout|ALT_INV_LRDATA\(25),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(26),
	combout => \audioout|Mux13~29_combout\);

-- Location: FF_X37_Y1_N13
\audioout|LRDATA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(12),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(28));

-- Location: LABCELL_X36_Y3_N21
\audioout|LRDATA[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[31]~feeder_combout\ = ( \i2sin|DATA_L\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(15),
	combout => \audioout|LRDATA[31]~feeder_combout\);

-- Location: FF_X36_Y3_N22
\audioout|LRDATA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[31]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(31));

-- Location: FF_X37_Y1_N56
\audioout|LRDATA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(13),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(29));

-- Location: FF_X37_Y3_N1
\audioout|LRDATA[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(14),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(30));

-- Location: LABCELL_X37_Y3_N39
\audioout|Mux13~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~12_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & ((!\audioout|Mux13~29_combout\ & (\audioout|LRDATA\(30))) # (\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(31))))))) # (\audioout|Bcount\(2) & 
-- (\audioout|Mux13~29_combout\)) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & ((!\audioout|Mux13~29_combout\ & (\audioout|LRDATA\(28))) # (\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(29))))))) # (\audioout|Bcount\(2) & 
-- (\audioout|Mux13~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(2),
	datab => \audioout|ALT_INV_Mux13~29_combout\,
	datac => \audioout|ALT_INV_LRDATA\(28),
	datad => \audioout|ALT_INV_LRDATA\(31),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_LRDATA\(29),
	datag => \audioout|ALT_INV_LRDATA\(30),
	combout => \audioout|Mux13~12_combout\);

-- Location: LABCELL_X37_Y3_N12
\audioout|Mux13~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~16_combout\ = ( \audioout|Mux13~8_combout\ & ( \audioout|Mux13~12_combout\ & ( (!\audioout|Bcount\(4)) # ((!\audioout|Bcount\(3) & (\audioout|Mux13~4_combout\)) # (\audioout|Bcount\(3) & ((\audioout|Mux13~0_combout\)))) ) ) ) # ( 
-- !\audioout|Mux13~8_combout\ & ( \audioout|Mux13~12_combout\ & ( (!\audioout|Bcount\(4) & (((!\audioout|Bcount\(3))))) # (\audioout|Bcount\(4) & ((!\audioout|Bcount\(3) & (\audioout|Mux13~4_combout\)) # (\audioout|Bcount\(3) & 
-- ((\audioout|Mux13~0_combout\))))) ) ) ) # ( \audioout|Mux13~8_combout\ & ( !\audioout|Mux13~12_combout\ & ( (!\audioout|Bcount\(4) & (((\audioout|Bcount\(3))))) # (\audioout|Bcount\(4) & ((!\audioout|Bcount\(3) & (\audioout|Mux13~4_combout\)) # 
-- (\audioout|Bcount\(3) & ((\audioout|Mux13~0_combout\))))) ) ) ) # ( !\audioout|Mux13~8_combout\ & ( !\audioout|Mux13~12_combout\ & ( (\audioout|Bcount\(4) & ((!\audioout|Bcount\(3) & (\audioout|Mux13~4_combout\)) # (\audioout|Bcount\(3) & 
-- ((\audioout|Mux13~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~4_combout\,
	datab => \audioout|ALT_INV_Bcount\(4),
	datac => \audioout|ALT_INV_Bcount\(3),
	datad => \audioout|ALT_INV_Mux13~0_combout\,
	datae => \audioout|ALT_INV_Mux13~8_combout\,
	dataf => \audioout|ALT_INV_Mux13~12_combout\,
	combout => \audioout|Mux13~16_combout\);

-- Location: LABCELL_X31_Y78_N3
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


