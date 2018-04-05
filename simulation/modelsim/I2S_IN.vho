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

-- DATE "04/03/2018 16:07:33"

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
	SCLK : IN std_logic;
	CS_N : IN std_logic;
	MOSI : IN std_logic;
	MISO : BUFFER std_logic;
	dig0 : BUFFER std_logic_vector(6 DOWNTO 0);
	dig1 : BUFFER std_logic_vector(6 DOWNTO 0);
	init_finish : BUFFER std_logic;
	AUD_MCLK : BUFFER std_logic;
	AUD_BCLK : IN std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_DACLRCK : IN std_logic;
	I2C_SDAT : BUFFER std_logic;
	I2C_SCLK : BUFFER std_logic
	);
END Overall;

-- Design Ports Information
-- MISO	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CS_N	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_CS_N : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_MISO : std_logic;
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
SIGNAL \audioout|word_count[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \audioout|word_counter~0_combout\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \audioout|state.d6~q\ : std_logic;
SIGNAL \audioout|state.d7~q\ : std_logic;
SIGNAL \audioout|state.d_ack~feeder_combout\ : std_logic;
SIGNAL \audioout|state.d_ack~q\ : std_logic;
SIGNAL \audioout|Mux10~0_combout\ : std_logic;
SIGNAL \audioout|Mux1~0_combout\ : std_logic;
SIGNAL \audioout|word_count[3]~0_combout\ : std_logic;
SIGNAL \audioout|Equal0~0_combout\ : std_logic;
SIGNAL \audioout|Selector29~0_combout\ : std_logic;
SIGNAL \audioout|state.b_stop0~q\ : std_logic;
SIGNAL \audioout|next_state.b_stop1~0_combout\ : std_logic;
SIGNAL \audioout|state.b_stop1~q\ : std_logic;
SIGNAL \audioout|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audioout|state.b_end~q\ : std_logic;
SIGNAL \audioout|i2c_counter[0]~0_combout\ : std_logic;
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
SIGNAL \audioout|I2C_SCLK~combout\ : std_logic;
SIGNAL \audioout|sck0~q\ : std_logic;
SIGNAL \audioout|sck1~q\ : std_logic;
SIGNAL \audioout|next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|Selector0~0_combout\ : std_logic;
SIGNAL \audioout|state.initialize~q\ : std_logic;
SIGNAL \audioout|Selector1~0_combout\ : std_logic;
SIGNAL \audioout|state.start~q\ : std_logic;
SIGNAL \audioout|state.b0~q\ : std_logic;
SIGNAL \audioout|state.b1~q\ : std_logic;
SIGNAL \audioout|state.b2~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b2~q\ : std_logic;
SIGNAL \audioout|state.b3~feeder_combout\ : std_logic;
SIGNAL \audioout|state.b3~q\ : std_logic;
SIGNAL \audioout|state.b4~q\ : std_logic;
SIGNAL \audioout|state.b5~q\ : std_logic;
SIGNAL \audioout|state.b6~q\ : std_logic;
SIGNAL \audioout|state.b7~q\ : std_logic;
SIGNAL \audioout|state.b_ack~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|state.a0~q\ : std_logic;
SIGNAL \audioout|state.a1~q\ : std_logic;
SIGNAL \audioout|state.a2~q\ : std_logic;
SIGNAL \audioout|state.a3~q\ : std_logic;
SIGNAL \audioout|state.a4~q\ : std_logic;
SIGNAL \audioout|state.a5~q\ : std_logic;
SIGNAL \audioout|state.a6~q\ : std_logic;
SIGNAL \audioout|state.a7~q\ : std_logic;
SIGNAL \audioout|state.a_ack~q\ : std_logic;
SIGNAL \audioout|state.d0~feeder_combout\ : std_logic;
SIGNAL \audioout|state.d0~q\ : std_logic;
SIGNAL \audioout|state.d1~q\ : std_logic;
SIGNAL \audioout|state.d2~q\ : std_logic;
SIGNAL \audioout|state.d3~q\ : std_logic;
SIGNAL \audioout|state.d4~q\ : std_logic;
SIGNAL \audioout|state.d5~q\ : std_logic;
SIGNAL \audioout|Selector30~1_combout\ : std_logic;
SIGNAL \audioout|Selector30~2_combout\ : std_logic;
SIGNAL \audioout|Selector30~0_combout\ : std_logic;
SIGNAL \audioout|Selector30~7_combout\ : std_logic;
SIGNAL \audioout|Selector30~8_combout\ : std_logic;
SIGNAL \audioout|Selector30~10_combout\ : std_logic;
SIGNAL \audioout|Selector30~5_combout\ : std_logic;
SIGNAL \audioout|Selector30~3_combout\ : std_logic;
SIGNAL \audioout|Selector30~4_combout\ : std_logic;
SIGNAL \audioout|Selector30~6_combout\ : std_logic;
SIGNAL \audioout|Selector30~9_combout\ : std_logic;
SIGNAL \audioout|state.b_ack~q\ : std_logic;
SIGNAL \audioout|WideOr32~combout\ : std_logic;
SIGNAL \CS_N~input_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \spislave|spi_clk_reg~0_combout\ : std_logic;
SIGNAL \spislave|spi_clk_reg~q\ : std_logic;
SIGNAL \MOSI~input_o\ : std_logic;
SIGNAL \spislave|data_shreg[0]~feeder_combout\ : std_logic;
SIGNAL \spislave|data_shreg_p~0_combout\ : std_logic;
SIGNAL \spislave|MISO~0_combout\ : std_logic;
SIGNAL \spislave|MISO~q\ : std_logic;
SIGNAL \SCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \spidisp|Mux6~0_combout\ : std_logic;
SIGNAL \spislave|bit_cnt~2_combout\ : std_logic;
SIGNAL \spislave|bit_cnt[2]~1_combout\ : std_logic;
SIGNAL \spislave|bit_cnt~3_combout\ : std_logic;
SIGNAL \spislave|bit_cnt~0_combout\ : std_logic;
SIGNAL \spislave|last_bit_en~0_combout\ : std_logic;
SIGNAL \spislave|last_bit_en~q\ : std_logic;
SIGNAL \spislave|DOUT_VLD~0_combout\ : std_logic;
SIGNAL \spidisp|Mux5~0_combout\ : std_logic;
SIGNAL \spidisp|Mux4~0_combout\ : std_logic;
SIGNAL \spidisp|Mux3~0_combout\ : std_logic;
SIGNAL \spidisp|Mux2~0_combout\ : std_logic;
SIGNAL \spidisp|Mux1~0_combout\ : std_logic;
SIGNAL \spidisp|Mux0~0_combout\ : std_logic;
SIGNAL \spidisp|Mux13~0_combout\ : std_logic;
SIGNAL \spidisp|Mux12~0_combout\ : std_logic;
SIGNAL \spidisp|Mux11~0_combout\ : std_logic;
SIGNAL \spidisp|Mux10~0_combout\ : std_logic;
SIGNAL \spidisp|Mux9~0_combout\ : std_logic;
SIGNAL \spidisp|Mux8~0_combout\ : std_logic;
SIGNAL \spidisp|Mux7~0_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \audioout|dack0~q\ : std_logic;
SIGNAL \audioout|dack1~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~5_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \audioout|bck0~q\ : std_logic;
SIGNAL \audioout|bck1~q\ : std_logic;
SIGNAL \audioout|Bcount[4]~1_combout\ : std_logic;
SIGNAL \audioout|Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~4_combout\ : std_logic;
SIGNAL \audioout|Bcount~3_combout\ : std_logic;
SIGNAL \audioout|Bcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|Bcount~0_combout\ : std_logic;
SIGNAL \audioout|dack1~q\ : std_logic;
SIGNAL \audioout|DACData_reg~0_combout\ : std_logic;
SIGNAL \audioout|Bcount~2_combout\ : std_logic;
SIGNAL \BIT_CLK~input_o\ : std_logic;
SIGNAL \BIT_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \i2sin|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[8]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[12]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[13]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[15]~feeder_combout\ : std_logic;
SIGNAL \LR_CLK~input_o\ : std_logic;
SIGNAL \i2sin|s_current_lr~q\ : std_logic;
SIGNAL \i2sin|i2s_in~0_combout\ : std_logic;
SIGNAL \i2sin|s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|DATA_R[15]~0_combout\ : std_logic;
SIGNAL \audioout|LRDATA[15]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[12]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[12]~feeder_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[9]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|DATA_R[9]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[9]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[8]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[11]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[11]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~21_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[14]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~4_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[8]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[15]~0_combout\ : std_logic;
SIGNAL \audioout|Mux13~29_combout\ : std_logic;
SIGNAL \i2sin|shift_reg[15]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|LRDATA[28]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[29]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~12_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[0]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_R[2]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~17_combout\ : std_logic;
SIGNAL \audioout|LRDATA[4]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[7]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~0_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[5]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[21]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[3]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[0]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[17]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[2]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~25_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[4]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[20]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[7]~feeder_combout\ : std_logic;
SIGNAL \audioout|LRDATA[23]~feeder_combout\ : std_logic;
SIGNAL \i2sin|DATA_L[6]~feeder_combout\ : std_logic;
SIGNAL \audioout|Mux13~8_combout\ : std_logic;
SIGNAL \audioout|Mux13~16_combout\ : std_logic;
SIGNAL \spislave|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2sin|DATA_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spidisp|dig0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audioout|LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spidisp|dig1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audioout|i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i2sin|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spislave|data_shreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audioout|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2sin|DATA_L\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audioout|ALT_INV_LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \audioout|ALT_INV_Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audioout|ALT_INV_I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b_stop1~q\ : std_logic;
SIGNAL \spislave|ALT_INV_data_shreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spislave|ALT_INV_last_bit_en~q\ : std_logic;
SIGNAL \spislave|ALT_INV_spi_clk_reg~q\ : std_logic;
SIGNAL \audioout|ALT_INV_i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \audioout|ALT_INV_state.b_end~q\ : std_logic;
SIGNAL \spidisp|ALT_INV_dig1\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \spidisp|ALT_INV_dig0\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \spislave|ALT_INV_MISO~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Selector30~10_combout\ : std_logic;
SIGNAL \spislave|ALT_INV_bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \audioout|ALT_INV_Mux13~29_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~25_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~21_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~17_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~12_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~8_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[8]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[9]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[13]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_dack1~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DIN~input_o\ : std_logic;
SIGNAL \ALT_INV_LR_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_MOSI~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_SCLK~input_o\ : std_logic;
SIGNAL \ALT_INV_CS_N~input_o\ : std_logic;
SIGNAL \audioout|ALT_INV_state.start~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2sin|ALT_INV_DATA_L\ : std_logic_vector(13 DOWNTO 1);
SIGNAL \i2sin|ALT_INV_DATA_R\ : std_logic_vector(15 DOWNTO 4);
SIGNAL \i2sin|ALT_INV_s_parallel_load~q\ : std_logic;
SIGNAL \i2sin|ALT_INV_s_current_lr~q\ : std_logic;
SIGNAL \audioout|ALT_INV_state.b1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_next_state_i2c~0_combout\ : std_logic;
SIGNAL \audioout|ALT_INV_sck1~q\ : std_logic;
SIGNAL \audioout|ALT_INV_sck0~q\ : std_logic;
SIGNAL \audioout|ALT_INV_word_counter~0_combout\ : std_logic;
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
SIGNAL \audioout|ALT_INV_state.d6~q\ : std_logic;
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

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_LR_CLK <= LR_CLK;
ww_BIT_CLK <= BIT_CLK;
ww_DIN <= DIN;
ww_SCLK <= SCLK;
ww_CS_N <= CS_N;
ww_MOSI <= MOSI;
MISO <= ww_MISO;
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
\spislave|ALT_INV_data_shreg\(3) <= NOT \spislave|data_shreg\(3);
\spislave|ALT_INV_data_shreg\(2) <= NOT \spislave|data_shreg\(2);
\spislave|ALT_INV_data_shreg\(1) <= NOT \spislave|data_shreg\(1);
\spislave|ALT_INV_data_shreg\(0) <= NOT \spislave|data_shreg\(0);
\spislave|ALT_INV_last_bit_en~q\ <= NOT \spislave|last_bit_en~q\;
\spislave|ALT_INV_data_shreg\(6) <= NOT \spislave|data_shreg\(6);
\spislave|ALT_INV_data_shreg\(5) <= NOT \spislave|data_shreg\(5);
\spislave|ALT_INV_data_shreg\(4) <= NOT \spislave|data_shreg\(4);
\spislave|ALT_INV_spi_clk_reg~q\ <= NOT \spislave|spi_clk_reg~q\;
\spislave|ALT_INV_data_shreg\(7) <= NOT \spislave|data_shreg\(7);
\audioout|ALT_INV_Bcount\(4) <= NOT \audioout|Bcount\(4);
\audioout|ALT_INV_Bcount\(3) <= NOT \audioout|Bcount\(3);
\audioout|ALT_INV_i2c_counter\(2) <= NOT \audioout|i2c_counter\(2);
\audioout|ALT_INV_state.b_end~q\ <= NOT \audioout|state.b_end~q\;
\spidisp|ALT_INV_dig1\(6) <= NOT \spidisp|dig1\(6);
\spidisp|ALT_INV_dig0\(6) <= NOT \spidisp|dig0\(6);
\spislave|ALT_INV_MISO~q\ <= NOT \spislave|MISO~q\;
\audioout|ALT_INV_Selector30~10_combout\ <= NOT \audioout|Selector30~10_combout\;
\spislave|ALT_INV_bit_cnt\(1) <= NOT \spislave|bit_cnt\(1);
\audioout|ALT_INV_Mux13~29_combout\ <= NOT \audioout|Mux13~29_combout\;
\audioout|ALT_INV_Mux13~25_combout\ <= NOT \audioout|Mux13~25_combout\;
\audioout|ALT_INV_Mux13~21_combout\ <= NOT \audioout|Mux13~21_combout\;
\audioout|ALT_INV_Mux13~17_combout\ <= NOT \audioout|Mux13~17_combout\;
\audioout|ALT_INV_Mux13~12_combout\ <= NOT \audioout|Mux13~12_combout\;
\audioout|ALT_INV_Mux13~8_combout\ <= NOT \audioout|Mux13~8_combout\;
\audioout|ALT_INV_Mux13~4_combout\ <= NOT \audioout|Mux13~4_combout\;
\audioout|ALT_INV_Mux13~0_combout\ <= NOT \audioout|Mux13~0_combout\;
\i2sin|ALT_INV_shift_reg[8]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[8]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[9]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[9]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[2]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[13]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[13]~DUPLICATE_q\;
\i2sin|ALT_INV_shift_reg[6]~DUPLICATE_q\ <= NOT \i2sin|shift_reg[6]~DUPLICATE_q\;
\audioout|ALT_INV_dack1~DUPLICATE_q\ <= NOT \audioout|dack1~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[0]~DUPLICATE_q\ <= NOT \audioout|Bcount[0]~DUPLICATE_q\;
\audioout|ALT_INV_Bcount[1]~DUPLICATE_q\ <= NOT \audioout|Bcount[1]~DUPLICATE_q\;
\ALT_INV_DIN~input_o\ <= NOT \DIN~input_o\;
\ALT_INV_LR_CLK~input_o\ <= NOT \LR_CLK~input_o\;
\ALT_INV_MOSI~input_o\ <= NOT \MOSI~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_SCLK~input_o\ <= NOT \SCLK~input_o\;
\ALT_INV_CS_N~input_o\ <= NOT \CS_N~input_o\;
\audioout|ALT_INV_i2c_counter\(3) <= NOT \audioout|i2c_counter\(3);
\audioout|ALT_INV_i2c_counter\(4) <= NOT \audioout|i2c_counter\(4);
\audioout|ALT_INV_i2c_counter\(5) <= NOT \audioout|i2c_counter\(5);
\audioout|ALT_INV_i2c_counter\(6) <= NOT \audioout|i2c_counter\(6);
\audioout|ALT_INV_i2c_counter\(7) <= NOT \audioout|i2c_counter\(7);
\audioout|ALT_INV_i2c_counter\(8) <= NOT \audioout|i2c_counter\(8);
\audioout|ALT_INV_state.start~q\ <= NOT \audioout|state.start~q\;
\i2sin|ALT_INV_shift_reg\(10) <= NOT \i2sin|shift_reg\(10);
\i2sin|ALT_INV_shift_reg\(8) <= NOT \i2sin|shift_reg\(8);
\i2sin|ALT_INV_shift_reg\(11) <= NOT \i2sin|shift_reg\(11);
\i2sin|ALT_INV_shift_reg\(2) <= NOT \i2sin|shift_reg\(2);
\i2sin|ALT_INV_shift_reg\(0) <= NOT \i2sin|shift_reg\(0);
\i2sin|ALT_INV_shift_reg\(3) <= NOT \i2sin|shift_reg\(3);
\i2sin|ALT_INV_DATA_L\(1) <= NOT \i2sin|DATA_L\(1);
\i2sin|ALT_INV_shift_reg\(14) <= NOT \i2sin|shift_reg\(14);
\i2sin|ALT_INV_DATA_R\(8) <= NOT \i2sin|DATA_R\(8);
\i2sin|ALT_INV_DATA_R\(11) <= NOT \i2sin|DATA_R\(11);
\i2sin|ALT_INV_DATA_R\(9) <= NOT \i2sin|DATA_R\(9);
\i2sin|ALT_INV_shift_reg\(12) <= NOT \i2sin|shift_reg\(12);
\i2sin|ALT_INV_shift_reg\(15) <= NOT \i2sin|shift_reg\(15);
\i2sin|ALT_INV_shift_reg\(4) <= NOT \i2sin|shift_reg\(4);
\i2sin|ALT_INV_shift_reg\(7) <= NOT \i2sin|shift_reg\(7);
\i2sin|ALT_INV_s_parallel_load~q\ <= NOT \i2sin|s_parallel_load~q\;
\i2sin|ALT_INV_s_current_lr~q\ <= NOT \i2sin|s_current_lr~q\;
\i2sin|ALT_INV_shift_reg\(5) <= NOT \i2sin|shift_reg\(5);
\audioout|ALT_INV_i2c_counter\(1) <= NOT \audioout|i2c_counter\(1);
\audioout|ALT_INV_i2c_counter\(0) <= NOT \audioout|i2c_counter\(0);
\audioout|ALT_INV_state.b1~q\ <= NOT \audioout|state.b1~q\;
\audioout|ALT_INV_Equal0~0_combout\ <= NOT \audioout|Equal0~0_combout\;
\audioout|ALT_INV_next_state_i2c~0_combout\ <= NOT \audioout|next_state_i2c~0_combout\;
\audioout|ALT_INV_sck1~q\ <= NOT \audioout|sck1~q\;
\audioout|ALT_INV_sck0~q\ <= NOT \audioout|sck0~q\;
\audioout|ALT_INV_word_counter~0_combout\ <= NOT \audioout|word_counter~0_combout\;
\audioout|ALT_INV_LRDATA\(26) <= NOT \audioout|LRDATA\(26);
\audioout|ALT_INV_LRDATA\(24) <= NOT \audioout|LRDATA\(24);
\audioout|ALT_INV_LRDATA\(27) <= NOT \audioout|LRDATA\(27);
\audioout|ALT_INV_LRDATA\(25) <= NOT \audioout|LRDATA\(25);
\i2sin|ALT_INV_DATA_L\(12) <= NOT \i2sin|DATA_L\(12);
\i2sin|ALT_INV_DATA_L\(13) <= NOT \i2sin|DATA_L\(13);
\audioout|ALT_INV_LRDATA\(18) <= NOT \audioout|LRDATA\(18);
\audioout|ALT_INV_LRDATA\(16) <= NOT \audioout|LRDATA\(16);
\audioout|ALT_INV_LRDATA\(19) <= NOT \audioout|LRDATA\(19);
\audioout|ALT_INV_LRDATA\(17) <= NOT \audioout|LRDATA\(17);
\i2sin|ALT_INV_DATA_L\(4) <= NOT \i2sin|DATA_L\(4);
\i2sin|ALT_INV_DATA_L\(7) <= NOT \i2sin|DATA_L\(7);
\i2sin|ALT_INV_DATA_L\(5) <= NOT \i2sin|DATA_L\(5);
\audioout|ALT_INV_LRDATA\(10) <= NOT \audioout|LRDATA\(10);
\audioout|ALT_INV_LRDATA\(8) <= NOT \audioout|LRDATA\(8);
\audioout|ALT_INV_LRDATA\(11) <= NOT \audioout|LRDATA\(11);
\audioout|ALT_INV_LRDATA\(9) <= NOT \audioout|LRDATA\(9);
\i2sin|ALT_INV_DATA_R\(12) <= NOT \i2sin|DATA_R\(12);
\i2sin|ALT_INV_DATA_R\(15) <= NOT \i2sin|DATA_R\(15);
\audioout|ALT_INV_LRDATA\(2) <= NOT \audioout|LRDATA\(2);
\audioout|ALT_INV_LRDATA\(0) <= NOT \audioout|LRDATA\(0);
\audioout|ALT_INV_LRDATA\(3) <= NOT \audioout|LRDATA\(3);
\audioout|ALT_INV_LRDATA\(1) <= NOT \audioout|LRDATA\(1);
\i2sin|ALT_INV_DATA_R\(4) <= NOT \i2sin|DATA_R\(4);
\i2sin|ALT_INV_DATA_R\(7) <= NOT \i2sin|DATA_R\(7);
\audioout|ALT_INV_state.b_stop0~q\ <= NOT \audioout|state.b_stop0~q\;
\spislave|ALT_INV_bit_cnt\(0) <= NOT \spislave|bit_cnt\(0);
\spislave|ALT_INV_bit_cnt\(2) <= NOT \spislave|bit_cnt\(2);
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
\audioout|ALT_INV_state.d6~q\ <= NOT \audioout|state.d6~q\;
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

-- Location: IOOBUF_X70_Y0_N2
\MISO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spislave|MISO~q\,
	devoe => ww_devoe,
	o => ww_MISO);

-- Location: IOOBUF_X89_Y8_N39
\dig0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spidisp|dig0\(0),
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
	i => \spidisp|dig0\(1),
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
	i => \spidisp|dig0\(2),
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
	i => \spidisp|dig0\(3),
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
	i => \spidisp|dig0\(4),
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
	i => \spidisp|dig0\(5),
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
	i => \spidisp|ALT_INV_dig0\(6),
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
	i => \spidisp|dig1\(0),
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
	i => \spidisp|dig1\(1),
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
	i => \spidisp|dig1\(2),
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
	i => \spidisp|dig1\(3),
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
	i => \spidisp|dig1\(4),
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
	i => \spidisp|dig1\(5),
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
	i => \spidisp|ALT_INV_dig1\(6),
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

-- Location: LABCELL_X11_Y80_N21
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

-- Location: LABCELL_X12_Y80_N57
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

-- Location: CLKCTRL_G14
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

-- Location: FF_X12_Y80_N55
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

-- Location: FF_X11_Y80_N56
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

-- Location: LABCELL_X11_Y80_N6
\audioout|state.d_ack~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.d_ack~feeder_combout\ = ( \audioout|state.d7~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \audioout|ALT_INV_state.d7~q\,
	combout => \audioout|state.d_ack~feeder_combout\);

-- Location: FF_X11_Y80_N8
\audioout|state.d_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.d_ack~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d_ack~q\);

-- Location: FF_X11_Y80_N14
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

-- Location: LABCELL_X11_Y80_N24
\audioout|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux10~0_combout\ = ( !\audioout|word_count\(1) & ( \audioout|word_count\(0) ) ) # ( \audioout|word_count\(1) & ( !\audioout|word_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Mux10~0_combout\);

-- Location: FF_X11_Y80_N38
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

-- Location: LABCELL_X11_Y80_N42
\audioout|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux1~0_combout\ = ( \audioout|word_count\(1) & ( \audioout|word_count\(0) & ( !\audioout|word_count\(2) ) ) ) # ( !\audioout|word_count\(1) & ( \audioout|word_count\(0) & ( \audioout|word_count\(2) ) ) ) # ( \audioout|word_count\(1) & ( 
-- !\audioout|word_count\(0) & ( \audioout|word_count\(2) ) ) ) # ( !\audioout|word_count\(1) & ( !\audioout|word_count\(0) & ( \audioout|word_count\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_word_count\(2),
	datae => \audioout|ALT_INV_word_count\(1),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Mux1~0_combout\);

-- Location: FF_X12_Y80_N26
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

-- Location: LABCELL_X11_Y80_N51
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

-- Location: FF_X11_Y80_N20
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

-- Location: LABCELL_X11_Y80_N33
\audioout|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Equal0~0_combout\ = ( !\audioout|word_count\(2) & ( \audioout|word_count\(0) & ( (\audioout|word_count\(3) & !\audioout|word_count\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(3),
	datab => \audioout|ALT_INV_word_count\(1),
	datae => \audioout|ALT_INV_word_count\(2),
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Equal0~0_combout\);

-- Location: LABCELL_X12_Y80_N30
\audioout|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector29~0_combout\ = ( \audioout|state.b_stop0~q\ & ( \audioout|I2C_SCLK~combout\ & ( (\audioout|Equal0~0_combout\ & (\audioout|next_state_i2c~0_combout\ & \audioout|state.d_ack~q\)) ) ) ) # ( !\audioout|state.b_stop0~q\ & ( 
-- \audioout|I2C_SCLK~combout\ & ( (\audioout|Equal0~0_combout\ & (\audioout|next_state_i2c~0_combout\ & \audioout|state.d_ack~q\)) ) ) ) # ( \audioout|state.b_stop0~q\ & ( !\audioout|I2C_SCLK~combout\ ) ) # ( !\audioout|state.b_stop0~q\ & ( 
-- !\audioout|I2C_SCLK~combout\ & ( (\audioout|Equal0~0_combout\ & (\audioout|next_state_i2c~0_combout\ & \audioout|state.d_ack~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_Equal0~0_combout\,
	datac => \audioout|ALT_INV_next_state_i2c~0_combout\,
	datad => \audioout|ALT_INV_state.d_ack~q\,
	datae => \audioout|ALT_INV_state.b_stop0~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector29~0_combout\);

-- Location: FF_X12_Y80_N32
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

-- Location: LABCELL_X12_Y80_N9
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

-- Location: FF_X12_Y80_N11
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

-- Location: LABCELL_X12_Y80_N12
\audioout|I2C_SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~0_combout\ = ( \audioout|state.b_stop1~q\ ) # ( !\audioout|state.b_stop1~q\ & ( \audioout|state.b_end~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_state.b_end~q\,
	dataf => \audioout|ALT_INV_state.b_stop1~q\,
	combout => \audioout|I2C_SCLK~0_combout\);

-- Location: FF_X12_Y80_N14
\audioout|state.b_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|I2C_SCLK~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b_end~q\);

-- Location: LABCELL_X12_Y80_N48
\audioout|i2c_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|i2c_counter[0]~0_combout\ = !\audioout|i2c_counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \audioout|ALT_INV_i2c_counter\(0),
	combout => \audioout|i2c_counter[0]~0_combout\);

-- Location: FF_X12_Y80_N49
\audioout|i2c_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|i2c_counter[0]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|i2c_counter\(0));

-- Location: LABCELL_X13_Y80_N0
\audioout|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~5_sumout\ = SUM(( \audioout|i2c_counter\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))
-- \audioout|Add1~6\ = CARRY(( \audioout|i2c_counter\(0) ) + ( \audioout|i2c_counter\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_i2c_counter\(1),
	datad => \audioout|ALT_INV_i2c_counter\(0),
	cin => GND,
	sumout => \audioout|Add1~5_sumout\,
	cout => \audioout|Add1~6\);

-- Location: FF_X13_Y80_N53
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

-- Location: LABCELL_X13_Y80_N3
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

-- Location: FF_X13_Y80_N4
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

-- Location: LABCELL_X13_Y80_N6
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

-- Location: FF_X13_Y80_N8
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

-- Location: LABCELL_X13_Y80_N9
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

-- Location: FF_X13_Y80_N11
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

-- Location: LABCELL_X13_Y80_N12
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

-- Location: FF_X13_Y80_N14
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

-- Location: LABCELL_X13_Y80_N15
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

-- Location: FF_X13_Y80_N17
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

-- Location: LABCELL_X13_Y80_N18
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

-- Location: FF_X13_Y80_N20
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

-- Location: LABCELL_X13_Y80_N21
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

-- Location: FF_X13_Y80_N23
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

-- Location: LABCELL_X13_Y80_N24
\audioout|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Add1~9_sumout\ = SUM(( \audioout|i2c_counter\(9) ) + ( GND ) + ( \audioout|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_i2c_counter\(9),
	cin => \audioout|Add1~14\,
	sumout => \audioout|Add1~9_sumout\);

-- Location: FF_X13_Y80_N50
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

-- Location: LABCELL_X12_Y80_N21
\audioout|I2C_SCLK\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|I2C_SCLK~combout\ = LCELL(( \audioout|state.b_stop1~q\ ) # ( !\audioout|state.b_stop1~q\ & ( (\audioout|i2c_counter\(9)) # (\audioout|state.b_end~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.b_end~q\,
	datad => \audioout|ALT_INV_i2c_counter\(9),
	dataf => \audioout|ALT_INV_state.b_stop1~q\,
	combout => \audioout|I2C_SCLK~combout\);

-- Location: FF_X12_Y80_N35
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

-- Location: FF_X13_Y80_N47
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

-- Location: LABCELL_X12_Y80_N0
\audioout|next_state_i2c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|next_state_i2c~0_combout\ = ( \audioout|sck1~q\ & ( !\audioout|sck0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_sck0~q\,
	dataf => \audioout|ALT_INV_sck1~q\,
	combout => \audioout|next_state_i2c~0_combout\);

-- Location: LABCELL_X12_Y80_N51
\audioout|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector0~0_combout\ = ( \audioout|I2C_SCLK~combout\ & ( (!\audioout|next_state_i2c~0_combout\) # ((!\audioout|state.d_ack~q\) # (\audioout|Equal0~0_combout\)) ) ) # ( !\audioout|I2C_SCLK~combout\ & ( (\audioout|state.initialize~q\ & 
-- ((!\audioout|next_state_i2c~0_combout\) # ((!\audioout|state.d_ack~q\) # (\audioout|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_next_state_i2c~0_combout\,
	datab => \audioout|ALT_INV_Equal0~0_combout\,
	datac => \audioout|ALT_INV_state.d_ack~q\,
	datad => \audioout|ALT_INV_state.initialize~q\,
	dataf => \audioout|ALT_INV_I2C_SCLK~combout\,
	combout => \audioout|Selector0~0_combout\);

-- Location: FF_X12_Y80_N53
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

-- Location: LABCELL_X12_Y80_N6
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

-- Location: FF_X12_Y80_N8
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

-- Location: FF_X11_Y80_N1
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

-- Location: FF_X11_Y80_N47
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

-- Location: LABCELL_X12_Y80_N54
\audioout|state.b2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b2~feeder_combout\ = \audioout|state.b1~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_state.b1~q\,
	combout => \audioout|state.b2~feeder_combout\);

-- Location: FF_X12_Y80_N56
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

-- Location: LABCELL_X12_Y80_N3
\audioout|state.b3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.b3~feeder_combout\ = \audioout|state.b2~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b2~q\,
	combout => \audioout|state.b3~feeder_combout\);

-- Location: FF_X12_Y80_N5
\audioout|state.b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.b3~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.b3~q\);

-- Location: FF_X12_Y80_N44
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

-- Location: FF_X12_Y80_N47
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

-- Location: FF_X12_Y80_N20
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

-- Location: FF_X11_Y80_N31
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

-- Location: FF_X11_Y80_N59
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

-- Location: FF_X11_Y80_N28
\audioout|state.a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.b_ack~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a0~q\);

-- Location: FF_X12_Y80_N59
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

-- Location: FF_X11_Y80_N53
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

-- Location: FF_X11_Y80_N4
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

-- Location: FF_X13_Y80_N40
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

-- Location: FF_X11_Y80_N44
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

-- Location: FF_X12_Y80_N23
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

-- Location: FF_X12_Y80_N38
\audioout|state.a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \audioout|state.a6~q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.a7~q\);

-- Location: FF_X12_Y80_N41
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

-- Location: LABCELL_X12_Y80_N42
\audioout|state.d0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|state.d0~feeder_combout\ = \audioout|state.a_ack~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \audioout|ALT_INV_state.a_ack~q\,
	combout => \audioout|state.d0~feeder_combout\);

-- Location: FF_X12_Y80_N43
\audioout|state.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|state.d0~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|state.d0~q\);

-- Location: FF_X13_Y80_N29
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

-- Location: FF_X13_Y80_N55
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

-- Location: FF_X12_Y80_N4
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

-- Location: FF_X13_Y80_N32
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

-- Location: FF_X12_Y80_N2
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

-- Location: LABCELL_X12_Y80_N36
\audioout|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~1_combout\ = ( !\audioout|word_count\(2) & ( (!\audioout|state.d5~q\ & (\audioout|state.a7~q\ & (!\audioout|word_count\(0) $ (!\audioout|word_count\(1))))) # (\audioout|state.d5~q\ & (!\audioout|word_count\(0) $ 
-- ((!\audioout|word_count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000111100000101000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d5~q\,
	datab => \audioout|ALT_INV_word_count\(0),
	datac => \audioout|ALT_INV_word_count\(1),
	datad => \audioout|ALT_INV_state.a7~q\,
	dataf => \audioout|ALT_INV_word_count\(2),
	combout => \audioout|Selector30~1_combout\);

-- Location: LABCELL_X13_Y80_N57
\audioout|Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~2_combout\ = ( \audioout|state.d3~q\ & ( \audioout|word_count\(0) & ( !\audioout|word_count\(2) ) ) ) # ( \audioout|state.d3~q\ & ( !\audioout|word_count\(0) & ( (\audioout|state.a5~q\ & \audioout|word_count\(1)) ) ) ) # ( 
-- !\audioout|state.d3~q\ & ( !\audioout|word_count\(0) & ( (\audioout|state.a5~q\ & \audioout|word_count\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.a5~q\,
	datab => \audioout|ALT_INV_word_count\(1),
	datad => \audioout|ALT_INV_word_count\(2),
	datae => \audioout|ALT_INV_state.d3~q\,
	dataf => \audioout|ALT_INV_word_count\(0),
	combout => \audioout|Selector30~2_combout\);

-- Location: LABCELL_X13_Y80_N42
\audioout|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~0_combout\ = ( \audioout|state.d3~q\ & ( \audioout|state.d2~q\ & ( (!\audioout|word_count\(2) & \audioout|word_count\(1)) ) ) ) # ( !\audioout|state.d3~q\ & ( \audioout|state.d2~q\ & ( (!\audioout|word_count\(2) & 
-- (\audioout|word_count\(1) & ((!\audioout|word_count\(0)) # (\audioout|state.d0~q\)))) ) ) ) # ( \audioout|state.d3~q\ & ( !\audioout|state.d2~q\ & ( (!\audioout|word_count\(2) & \audioout|word_count\(1)) ) ) ) # ( !\audioout|state.d3~q\ & ( 
-- !\audioout|state.d2~q\ & ( (!\audioout|word_count\(2) & (\audioout|state.d0~q\ & \audioout|word_count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000010100000101000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(2),
	datab => \audioout|ALT_INV_state.d0~q\,
	datac => \audioout|ALT_INV_word_count\(1),
	datad => \audioout|ALT_INV_word_count\(0),
	datae => \audioout|ALT_INV_state.d3~q\,
	dataf => \audioout|ALT_INV_state.d2~q\,
	combout => \audioout|Selector30~0_combout\);

-- Location: LABCELL_X12_Y80_N15
\audioout|Selector30~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~7_combout\ = ( \audioout|state.a5~q\ & ( ((\audioout|state.d4~q\) # (\audioout|word_count\(2))) # (\audioout|state.d6~q\) ) ) # ( !\audioout|state.a5~q\ & ( (!\audioout|word_count\(2) & (((\audioout|state.d4~q\) # 
-- (\audioout|state.d6~q\)))) # (\audioout|word_count\(2) & (\audioout|state.d2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111110101001101011111010100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d2~q\,
	datab => \audioout|ALT_INV_state.d6~q\,
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_state.d4~q\,
	dataf => \audioout|ALT_INV_state.a5~q\,
	combout => \audioout|Selector30~7_combout\);

-- Location: LABCELL_X13_Y80_N51
\audioout|Selector30~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~8_combout\ = ((\audioout|state.a3~q\ & !\audioout|word_count\(2))) # (\audioout|state.a6~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010101110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.a6~q\,
	datab => \audioout|ALT_INV_state.a3~q\,
	datad => \audioout|ALT_INV_word_count\(2),
	combout => \audioout|Selector30~8_combout\);

-- Location: LABCELL_X11_Y80_N36
\audioout|Selector30~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~10_combout\ = ( !\audioout|word_count\(0) & ( (!\audioout|word_count\(1) & (((\audioout|state.d7~q\ & ((\audioout|word_count\(2)) # (\audioout|word_count\(3))))) # (\audioout|Selector30~8_combout\))) # (\audioout|word_count\(1) & 
-- (((\audioout|state.d7~q\)))) ) ) # ( \audioout|word_count\(0) & ( (!\audioout|state.d7~q\ & (((\audioout|Selector30~7_combout\ & ((!\audioout|word_count\(1))))))) # (\audioout|state.d7~q\ & (((!\audioout|word_count\(1) & ((!\audioout|word_count\(2)) # 
-- (\audioout|Selector30~7_combout\)))) # (\audioout|word_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001111100111111001111110001111100110011001100110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_word_count\(3),
	datab => \audioout|ALT_INV_state.d7~q\,
	datac => \audioout|ALT_INV_Selector30~7_combout\,
	datad => \audioout|ALT_INV_word_count\(2),
	datae => \audioout|ALT_INV_word_count\(0),
	dataf => \audioout|ALT_INV_word_count\(1),
	datag => \audioout|ALT_INV_Selector30~8_combout\,
	combout => \audioout|Selector30~10_combout\);

-- Location: LABCELL_X13_Y80_N36
\audioout|Selector30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~5_combout\ = ( \audioout|state.a4~q\ & ( \audioout|state.a3~q\ & ( ((\audioout|word_count\(1) & ((\audioout|word_count\(0)) # (\audioout|state.d1~q\)))) # (\audioout|word_count\(2)) ) ) ) # ( !\audioout|state.a4~q\ & ( 
-- \audioout|state.a3~q\ & ( (!\audioout|state.d1~q\ & (\audioout|word_count\(1) & (\audioout|word_count\(2) & \audioout|word_count\(0)))) # (\audioout|state.d1~q\ & (((\audioout|word_count\(2) & \audioout|word_count\(0))) # (\audioout|word_count\(1)))) ) ) 
-- ) # ( \audioout|state.a4~q\ & ( !\audioout|state.a3~q\ & ( (!\audioout|word_count\(1) & (((\audioout|word_count\(2))))) # (\audioout|word_count\(1) & ((!\audioout|word_count\(2) & ((\audioout|word_count\(0)) # (\audioout|state.d1~q\))) # 
-- (\audioout|word_count\(2) & ((!\audioout|word_count\(0)))))) ) ) ) # ( !\audioout|state.a4~q\ & ( !\audioout|state.a3~q\ & ( (\audioout|state.d1~q\ & (!\audioout|word_count\(1) $ (((!\audioout|word_count\(2)) # (!\audioout|word_count\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010100000111110011110000010001000101110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d1~q\,
	datab => \audioout|ALT_INV_word_count\(1),
	datac => \audioout|ALT_INV_word_count\(2),
	datad => \audioout|ALT_INV_word_count\(0),
	datae => \audioout|ALT_INV_state.a4~q\,
	dataf => \audioout|ALT_INV_state.a3~q\,
	combout => \audioout|Selector30~5_combout\);

-- Location: LABCELL_X12_Y80_N45
\audioout|Selector30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~3_combout\ = ( \audioout|word_count\(1) & ( (!\audioout|state.d6~q\ & !\audioout|state.a6~q\) ) ) # ( !\audioout|word_count\(1) & ( (!\audioout|state.d5~q\ & !\audioout|state.a6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.d5~q\,
	datac => \audioout|ALT_INV_state.d6~q\,
	datad => \audioout|ALT_INV_state.a6~q\,
	dataf => \audioout|ALT_INV_word_count\(1),
	combout => \audioout|Selector30~3_combout\);

-- Location: LABCELL_X12_Y80_N18
\audioout|Selector30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~4_combout\ = (!\audioout|state.b2~q\ & (!\audioout|state.b3~q\ & (\audioout|state.initialize~q\ & !\audioout|state.b5~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_state.b2~q\,
	datab => \audioout|ALT_INV_state.b3~q\,
	datac => \audioout|ALT_INV_state.initialize~q\,
	datad => \audioout|ALT_INV_state.b5~q\,
	combout => \audioout|Selector30~4_combout\);

-- Location: LABCELL_X12_Y80_N24
\audioout|Selector30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~6_combout\ = ( \audioout|word_count\(2) & ( \audioout|Selector30~4_combout\ & ( (!\audioout|Selector30~5_combout\ & (!\audioout|I2C_SCLK~0_combout\ & ((\audioout|word_count\(0)) # (\audioout|Selector30~3_combout\)))) ) ) ) # ( 
-- !\audioout|word_count\(2) & ( \audioout|Selector30~4_combout\ & ( (!\audioout|Selector30~5_combout\ & !\audioout|I2C_SCLK~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~5_combout\,
	datab => \audioout|ALT_INV_Selector30~3_combout\,
	datac => \audioout|ALT_INV_I2C_SCLK~0_combout\,
	datad => \audioout|ALT_INV_word_count\(0),
	datae => \audioout|ALT_INV_word_count\(2),
	dataf => \audioout|ALT_INV_Selector30~4_combout\,
	combout => \audioout|Selector30~6_combout\);

-- Location: LABCELL_X13_Y80_N33
\audioout|Selector30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Selector30~9_combout\ = ( \audioout|Selector30~10_combout\ & ( \audioout|Selector30~6_combout\ ) ) # ( !\audioout|Selector30~10_combout\ & ( \audioout|Selector30~6_combout\ & ( ((\audioout|Selector30~0_combout\) # 
-- (\audioout|Selector30~2_combout\)) # (\audioout|Selector30~1_combout\) ) ) ) # ( \audioout|Selector30~10_combout\ & ( !\audioout|Selector30~6_combout\ ) ) # ( !\audioout|Selector30~10_combout\ & ( !\audioout|Selector30~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Selector30~1_combout\,
	datab => \audioout|ALT_INV_Selector30~2_combout\,
	datac => \audioout|ALT_INV_Selector30~0_combout\,
	datae => \audioout|ALT_INV_Selector30~10_combout\,
	dataf => \audioout|ALT_INV_Selector30~6_combout\,
	combout => \audioout|Selector30~9_combout\);

-- Location: FF_X11_Y80_N58
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

-- Location: LABCELL_X12_Y80_N39
\audioout|WideOr32\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|WideOr32~combout\ = ( !\audioout|state.d_ack~q\ & ( (!\audioout|state.b_ack~q\ & !\audioout|state.a_ack~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_state.b_ack~q\,
	datad => \audioout|ALT_INV_state.a_ack~q\,
	dataf => \audioout|ALT_INV_state.d_ack~q\,
	combout => \audioout|WideOr32~combout\);

-- Location: IOIBUF_X50_Y0_N58
\CS_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS_N,
	o => \CS_N~input_o\);

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

-- Location: MLABCELL_X59_Y4_N21
\spislave|spi_clk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|spi_clk_reg~0_combout\ = ( \SCLK~input_o\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_SCLK~input_o\,
	combout => \spislave|spi_clk_reg~0_combout\);

-- Location: FF_X59_Y4_N23
\spislave|spi_clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|spi_clk_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|spi_clk_reg~q\);

-- Location: IOIBUF_X62_Y0_N1
\MOSI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MOSI,
	o => \MOSI~input_o\);

-- Location: MLABCELL_X59_Y4_N54
\spislave|data_shreg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|data_shreg[0]~feeder_combout\ = ( \MOSI~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_MOSI~input_o\,
	combout => \spislave|data_shreg[0]~feeder_combout\);

-- Location: MLABCELL_X59_Y4_N9
\spislave|data_shreg_p~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|data_shreg_p~0_combout\ = ( !\spislave|spi_clk_reg~q\ & ( \SCLK~input_o\ & ( !\CS_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CS_N~input_o\,
	datae => \spislave|ALT_INV_spi_clk_reg~q\,
	dataf => \ALT_INV_SCLK~input_o\,
	combout => \spislave|data_shreg_p~0_combout\);

-- Location: FF_X59_Y4_N56
\spislave|data_shreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|data_shreg[0]~feeder_combout\,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(0));

-- Location: FF_X59_Y4_N55
\spislave|data_shreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(0),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(1));

-- Location: FF_X59_Y4_N47
\spislave|data_shreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(1),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(2));

-- Location: FF_X59_Y4_N44
\spislave|data_shreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(2),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(3));

-- Location: FF_X59_Y4_N35
\spislave|data_shreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(3),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(4));

-- Location: FF_X59_Y4_N38
\spislave|data_shreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(4),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(5));

-- Location: FF_X59_Y4_N11
\spislave|data_shreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(5),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(6));

-- Location: FF_X59_Y4_N32
\spislave|data_shreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \spislave|data_shreg\(6),
	sload => VCC,
	ena => \spislave|data_shreg_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|data_shreg\(7));

-- Location: MLABCELL_X59_Y4_N48
\spislave|MISO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|MISO~0_combout\ = ( \spislave|MISO~q\ & ( \SCLK~input_o\ ) ) # ( \spislave|MISO~q\ & ( !\SCLK~input_o\ & ( ((!\spislave|spi_clk_reg~q\) # (\spislave|data_shreg\(7))) # (\CS_N~input_o\) ) ) ) # ( !\spislave|MISO~q\ & ( !\SCLK~input_o\ & ( 
-- (!\CS_N~input_o\ & (\spislave|spi_clk_reg~q\ & \spislave|data_shreg\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111101011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CS_N~input_o\,
	datac => \spislave|ALT_INV_spi_clk_reg~q\,
	datad => \spislave|ALT_INV_data_shreg\(7),
	datae => \spislave|ALT_INV_MISO~q\,
	dataf => \ALT_INV_SCLK~input_o\,
	combout => \spislave|MISO~0_combout\);

-- Location: FF_X59_Y4_N49
\spislave|MISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|MISO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|MISO~q\);

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

-- Location: LABCELL_X60_Y4_N54
\spidisp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux6~0_combout\ = (!\spislave|data_shreg\(7) & (!\spislave|data_shreg\(5) & (!\spislave|data_shreg\(6) $ (!\spislave|data_shreg\(4))))) # (\spislave|data_shreg\(7) & (\spislave|data_shreg\(4) & (!\spislave|data_shreg\(6) $ 
-- (!\spislave|data_shreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000100001010010000010000101001000001000010100100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(4),
	datad => \spislave|ALT_INV_data_shreg\(5),
	combout => \spidisp|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y4_N0
\spislave|bit_cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|bit_cnt~2_combout\ = ( !\reset~input_o\ & ( !\spislave|bit_cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spislave|ALT_INV_bit_cnt\(0),
	dataf => \ALT_INV_reset~input_o\,
	combout => \spislave|bit_cnt~2_combout\);

-- Location: MLABCELL_X59_Y4_N57
\spislave|bit_cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|bit_cnt[2]~1_combout\ = ( \SCLK~input_o\ & ( \reset~input_o\ ) ) # ( !\SCLK~input_o\ & ( ((!\CS_N~input_o\ & \spislave|spi_clk_reg~q\)) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_CS_N~input_o\,
	datad => \spislave|ALT_INV_spi_clk_reg~q\,
	dataf => \ALT_INV_SCLK~input_o\,
	combout => \spislave|bit_cnt[2]~1_combout\);

-- Location: FF_X59_Y4_N2
\spislave|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|bit_cnt~2_combout\,
	ena => \spislave|bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|bit_cnt\(0));

-- Location: MLABCELL_X59_Y4_N3
\spislave|bit_cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|bit_cnt~3_combout\ = !\spislave|bit_cnt\(0) $ (!\spislave|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_bit_cnt\(0),
	datad => \spislave|ALT_INV_bit_cnt\(1),
	combout => \spislave|bit_cnt~3_combout\);

-- Location: FF_X59_Y4_N5
\spislave|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|bit_cnt~3_combout\,
	sclr => \reset~input_o\,
	ena => \spislave|bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|bit_cnt\(1));

-- Location: MLABCELL_X59_Y4_N12
\spislave|bit_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|bit_cnt~0_combout\ = ( \spislave|bit_cnt\(2) & ( \spislave|bit_cnt\(1) & ( (!\reset~input_o\ & !\spislave|bit_cnt\(0)) ) ) ) # ( !\spislave|bit_cnt\(2) & ( \spislave|bit_cnt\(1) & ( (!\reset~input_o\ & \spislave|bit_cnt\(0)) ) ) ) # ( 
-- \spislave|bit_cnt\(2) & ( !\spislave|bit_cnt\(1) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \spislave|ALT_INV_bit_cnt\(0),
	datae => \spislave|ALT_INV_bit_cnt\(2),
	dataf => \spislave|ALT_INV_bit_cnt\(1),
	combout => \spislave|bit_cnt~0_combout\);

-- Location: FF_X59_Y4_N13
\spislave|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|bit_cnt~0_combout\,
	ena => \spislave|bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|bit_cnt\(2));

-- Location: MLABCELL_X59_Y4_N27
\spislave|last_bit_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|last_bit_en~0_combout\ = ( \spislave|bit_cnt\(0) & ( \spislave|bit_cnt\(2) & ( (!\reset~input_o\ & \spislave|bit_cnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \spislave|ALT_INV_bit_cnt\(1),
	datae => \spislave|ALT_INV_bit_cnt\(0),
	dataf => \spislave|ALT_INV_bit_cnt\(2),
	combout => \spislave|last_bit_en~0_combout\);

-- Location: FF_X59_Y4_N28
\spislave|last_bit_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \spislave|last_bit_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spislave|last_bit_en~q\);

-- Location: LABCELL_X60_Y4_N39
\spislave|DOUT_VLD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spislave|DOUT_VLD~0_combout\ = ( \spislave|spi_clk_reg~q\ & ( (!\SCLK~input_o\ & \spislave|last_bit_en~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SCLK~input_o\,
	datad => \spislave|ALT_INV_last_bit_en~q\,
	dataf => \spislave|ALT_INV_spi_clk_reg~q\,
	combout => \spislave|DOUT_VLD~0_combout\);

-- Location: FF_X60_Y4_N55
\spidisp|dig0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux6~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(0));

-- Location: LABCELL_X60_Y4_N57
\spidisp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux5~0_combout\ = (!\spislave|data_shreg\(7) & (\spislave|data_shreg\(6) & (!\spislave|data_shreg\(4) $ (!\spislave|data_shreg\(5))))) # (\spislave|data_shreg\(7) & ((!\spislave|data_shreg\(4) & (\spislave|data_shreg\(6))) # 
-- (\spislave|data_shreg\(4) & ((\spislave|data_shreg\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110101000100100011010100010010001101010001001000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(4),
	datad => \spislave|ALT_INV_data_shreg\(5),
	combout => \spidisp|Mux5~0_combout\);

-- Location: FF_X60_Y4_N58
\spidisp|dig0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux5~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(1));

-- Location: LABCELL_X60_Y4_N48
\spidisp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux4~0_combout\ = (!\spislave|data_shreg\(7) & (!\spislave|data_shreg\(6) & (!\spislave|data_shreg\(4) & \spislave|data_shreg\(5)))) # (\spislave|data_shreg\(7) & (\spislave|data_shreg\(6) & ((!\spislave|data_shreg\(4)) # 
-- (\spislave|data_shreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010001000100001001000100010000100100010001000010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(4),
	datad => \spislave|ALT_INV_data_shreg\(5),
	combout => \spidisp|Mux4~0_combout\);

-- Location: FF_X60_Y4_N49
\spidisp|dig0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux4~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(2));

-- Location: LABCELL_X60_Y4_N51
\spidisp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux3~0_combout\ = (!\spislave|data_shreg\(5) & (!\spislave|data_shreg\(7) & (!\spislave|data_shreg\(6) $ (!\spislave|data_shreg\(4))))) # (\spislave|data_shreg\(5) & ((!\spislave|data_shreg\(6) & (\spislave|data_shreg\(7) & 
-- !\spislave|data_shreg\(4))) # (\spislave|data_shreg\(6) & ((\spislave|data_shreg\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(5),
	datad => \spislave|ALT_INV_data_shreg\(4),
	combout => \spidisp|Mux3~0_combout\);

-- Location: FF_X60_Y4_N52
\spidisp|dig0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux3~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(3));

-- Location: LABCELL_X60_Y4_N24
\spidisp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux2~0_combout\ = (!\spislave|data_shreg\(5) & ((!\spislave|data_shreg\(6) & ((\spislave|data_shreg\(4)))) # (\spislave|data_shreg\(6) & (!\spislave|data_shreg\(7))))) # (\spislave|data_shreg\(5) & (!\spislave|data_shreg\(7) & 
-- ((\spislave|data_shreg\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001010001011100000101000101110000010100010111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(4),
	datad => \spislave|ALT_INV_data_shreg\(5),
	combout => \spidisp|Mux2~0_combout\);

-- Location: FF_X60_Y4_N25
\spidisp|dig0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux2~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(4));

-- Location: LABCELL_X60_Y4_N27
\spidisp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux1~0_combout\ = (!\spislave|data_shreg\(6) & (!\spislave|data_shreg\(7) & ((\spislave|data_shreg\(4)) # (\spislave|data_shreg\(5))))) # (\spislave|data_shreg\(6) & (\spislave|data_shreg\(4) & (!\spislave|data_shreg\(7) $ 
-- (!\spislave|data_shreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(7),
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(5),
	datad => \spislave|ALT_INV_data_shreg\(4),
	combout => \spidisp|Mux1~0_combout\);

-- Location: FF_X60_Y4_N28
\spidisp|dig0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux1~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(5));

-- Location: LABCELL_X60_Y4_N6
\spidisp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux0~0_combout\ = ( \spislave|data_shreg\(4) & ( (!\spislave|data_shreg\(6) $ (!\spislave|data_shreg\(5))) # (\spislave|data_shreg\(7)) ) ) # ( !\spislave|data_shreg\(4) & ( (!\spislave|data_shreg\(6) $ (!\spislave|data_shreg\(7))) # 
-- (\spislave|data_shreg\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011111111001111001111111100111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spislave|ALT_INV_data_shreg\(6),
	datac => \spislave|ALT_INV_data_shreg\(7),
	datad => \spislave|ALT_INV_data_shreg\(5),
	dataf => \spislave|ALT_INV_data_shreg\(4),
	combout => \spidisp|Mux0~0_combout\);

-- Location: FF_X60_Y4_N7
\spidisp|dig0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux0~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig0\(6));

-- Location: LABCELL_X60_Y4_N9
\spidisp|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux13~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2) & (\spislave|data_shreg\(3) & \spislave|data_shreg\(0))) ) ) # ( !\spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2) & (!\spislave|data_shreg\(3) & 
-- \spislave|data_shreg\(0))) # (\spislave|data_shreg\(2) & (!\spislave|data_shreg\(3) $ (\spislave|data_shreg\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(2),
	datac => \spislave|ALT_INV_data_shreg\(3),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux13~0_combout\);

-- Location: FF_X60_Y4_N10
\spidisp|dig1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux13~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(0));

-- Location: LABCELL_X60_Y4_N30
\spidisp|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux12~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(0) & ((\spislave|data_shreg\(2)))) # (\spislave|data_shreg\(0) & (\spislave|data_shreg\(3))) ) ) # ( !\spislave|data_shreg\(1) & ( (\spislave|data_shreg\(2) & 
-- (!\spislave|data_shreg\(3) $ (!\spislave|data_shreg\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spislave|ALT_INV_data_shreg\(3),
	datac => \spislave|ALT_INV_data_shreg\(2),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux12~0_combout\);

-- Location: FF_X60_Y4_N31
\spidisp|dig1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux12~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(1));

-- Location: LABCELL_X60_Y4_N33
\spidisp|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux11~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2) & (!\spislave|data_shreg\(3) & !\spislave|data_shreg\(0))) # (\spislave|data_shreg\(2) & (\spislave|data_shreg\(3))) ) ) # ( !\spislave|data_shreg\(1) & ( 
-- (\spislave|data_shreg\(2) & (\spislave|data_shreg\(3) & !\spislave|data_shreg\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(2),
	datac => \spislave|ALT_INV_data_shreg\(3),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux11~0_combout\);

-- Location: FF_X60_Y4_N34
\spidisp|dig1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux11~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(2));

-- Location: LABCELL_X60_Y4_N36
\spidisp|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux10~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2) & (\spislave|data_shreg\(3) & !\spislave|data_shreg\(0))) # (\spislave|data_shreg\(2) & ((\spislave|data_shreg\(0)))) ) ) # ( !\spislave|data_shreg\(1) & ( 
-- (!\spislave|data_shreg\(3) & (!\spislave|data_shreg\(2) $ (!\spislave|data_shreg\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spislave|ALT_INV_data_shreg\(3),
	datac => \spislave|ALT_INV_data_shreg\(2),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux10~0_combout\);

-- Location: FF_X60_Y4_N37
\spidisp|dig1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux10~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(3));

-- Location: LABCELL_X60_Y4_N12
\spidisp|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux9~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(3) & \spislave|data_shreg\(0)) ) ) # ( !\spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2) & ((\spislave|data_shreg\(0)))) # (\spislave|data_shreg\(2) & 
-- (!\spislave|data_shreg\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spislave|ALT_INV_data_shreg\(3),
	datac => \spislave|ALT_INV_data_shreg\(2),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux9~0_combout\);

-- Location: FF_X60_Y4_N13
\spidisp|dig1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux9~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(4));

-- Location: LABCELL_X60_Y4_N15
\spidisp|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux8~0_combout\ = ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(3) & ((!\spislave|data_shreg\(2)) # (\spislave|data_shreg\(0)))) ) ) # ( !\spislave|data_shreg\(1) & ( (\spislave|data_shreg\(0) & (!\spislave|data_shreg\(2) $ 
-- (\spislave|data_shreg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spislave|ALT_INV_data_shreg\(2),
	datac => \spislave|ALT_INV_data_shreg\(3),
	datad => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux8~0_combout\);

-- Location: FF_X60_Y4_N16
\spidisp|dig1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux8~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(5));

-- Location: LABCELL_X60_Y4_N42
\spidisp|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spidisp|Mux7~0_combout\ = ( \spislave|data_shreg\(0) & ( \spislave|data_shreg\(1) & ( (!\spislave|data_shreg\(2)) # (\spislave|data_shreg\(3)) ) ) ) # ( !\spislave|data_shreg\(0) & ( \spislave|data_shreg\(1) ) ) # ( \spislave|data_shreg\(0) & ( 
-- !\spislave|data_shreg\(1) & ( (\spislave|data_shreg\(3)) # (\spislave|data_shreg\(2)) ) ) ) # ( !\spislave|data_shreg\(0) & ( !\spislave|data_shreg\(1) & ( !\spislave|data_shreg\(2) $ (!\spislave|data_shreg\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111111111111111111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spislave|ALT_INV_data_shreg\(2),
	datad => \spislave|ALT_INV_data_shreg\(3),
	datae => \spislave|ALT_INV_data_shreg\(0),
	dataf => \spislave|ALT_INV_data_shreg\(1),
	combout => \spidisp|Mux7~0_combout\);

-- Location: FF_X60_Y4_N43
\spidisp|dig1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputCLKENA0_outclk\,
	d => \spidisp|Mux7~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \spislave|DOUT_VLD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spidisp|dig1\(6));

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

-- Location: FF_X22_Y42_N35
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

-- Location: FF_X22_Y42_N13
\audioout|dack1~DUPLICATE\ : dffeas
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
	q => \audioout|dack1~DUPLICATE_q\);

-- Location: LABCELL_X22_Y42_N24
\audioout|Bcount~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~5_combout\ = ( \audioout|dack1~DUPLICATE_q\ & ( !\audioout|Bcount\(0) ) ) # ( !\audioout|dack1~DUPLICATE_q\ & ( (!\audioout|dack0~q\ & !\audioout|Bcount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_dack0~q\,
	datad => \audioout|ALT_INV_Bcount\(0),
	dataf => \audioout|ALT_INV_dack1~DUPLICATE_q\,
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

-- Location: FF_X22_Y42_N17
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

-- Location: FF_X22_Y42_N31
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

-- Location: LABCELL_X22_Y42_N6
\audioout|Bcount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount[4]~1_combout\ = ( \audioout|dack1~DUPLICATE_q\ & ( (\audioout|bck1~q\ & !\audioout|bck0~q\) ) ) # ( !\audioout|dack1~DUPLICATE_q\ & ( ((\audioout|bck1~q\ & !\audioout|bck0~q\)) # (\audioout|dack0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datac => \audioout|ALT_INV_bck1~q\,
	datad => \audioout|ALT_INV_bck0~q\,
	dataf => \audioout|ALT_INV_dack1~DUPLICATE_q\,
	combout => \audioout|Bcount[4]~1_combout\);

-- Location: FF_X22_Y42_N26
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

-- Location: FF_X22_Y42_N25
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

-- Location: LABCELL_X22_Y42_N21
\audioout|Bcount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~4_combout\ = ( \audioout|Bcount[0]~DUPLICATE_q\ & ( (!\audioout|Bcount\(1) & ((!\audioout|dack0~q\) # (\audioout|dack1~DUPLICATE_q\))) ) ) # ( !\audioout|Bcount[0]~DUPLICATE_q\ & ( (\audioout|Bcount\(1) & ((!\audioout|dack0~q\) # 
-- (\audioout|dack1~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101110111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datab => \audioout|ALT_INV_dack1~DUPLICATE_q\,
	datad => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	combout => \audioout|Bcount~4_combout\);

-- Location: FF_X22_Y42_N22
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

-- Location: LABCELL_X22_Y42_N18
\audioout|Bcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~3_combout\ = ( \audioout|Bcount\(1) & ( (!\audioout|dack0~q\ & ((!\audioout|Bcount\(0) $ (!\audioout|Bcount\(2))))) # (\audioout|dack0~q\ & (\audioout|dack1~DUPLICATE_q\ & (!\audioout|Bcount\(0) $ (!\audioout|Bcount\(2))))) ) ) # ( 
-- !\audioout|Bcount\(1) & ( (\audioout|Bcount\(2) & ((!\audioout|dack0~q\) # (\audioout|dack1~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100001011101100000000101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_dack0~q\,
	datab => \audioout|ALT_INV_dack1~DUPLICATE_q\,
	datac => \audioout|ALT_INV_Bcount\(0),
	datad => \audioout|ALT_INV_Bcount\(2),
	dataf => \audioout|ALT_INV_Bcount\(1),
	combout => \audioout|Bcount~3_combout\);

-- Location: FF_X22_Y42_N20
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

-- Location: FF_X22_Y42_N23
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

-- Location: LABCELL_X22_Y42_N30
\audioout|Bcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~0_combout\ = ( \audioout|Bcount[1]~DUPLICATE_q\ & ( \audioout|dack1~DUPLICATE_q\ & ( !\audioout|Bcount\(3) $ (((!\audioout|Bcount\(2)) # (!\audioout|Bcount[0]~DUPLICATE_q\))) ) ) ) # ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( 
-- \audioout|dack1~DUPLICATE_q\ & ( \audioout|Bcount\(3) ) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( !\audioout|dack1~DUPLICATE_q\ & ( (!\audioout|dack0~q\ & (!\audioout|Bcount\(3) $ (((!\audioout|Bcount\(2)) # (!\audioout|Bcount[0]~DUPLICATE_q\))))) ) ) 
-- ) # ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( !\audioout|dack1~DUPLICATE_q\ & ( (\audioout|Bcount\(3) & !\audioout|dack0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000110000000110011001100110011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(2),
	datab => \audioout|ALT_INV_Bcount\(3),
	datac => \audioout|ALT_INV_dack0~q\,
	datad => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_dack1~DUPLICATE_q\,
	combout => \audioout|Bcount~0_combout\);

-- Location: FF_X22_Y42_N8
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

-- Location: FF_X22_Y42_N14
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

-- Location: LABCELL_X22_Y42_N27
\audioout|DACData_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|DACData_reg~0_combout\ = ( \audioout|dack0~q\ & ( !\audioout|dack1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \audioout|ALT_INV_dack1~q\,
	dataf => \audioout|ALT_INV_dack0~q\,
	combout => \audioout|DACData_reg~0_combout\);

-- Location: LABCELL_X22_Y42_N48
\audioout|Bcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Bcount~2_combout\ = ( \audioout|Bcount\(4) & ( \audioout|Bcount[0]~DUPLICATE_q\ & ( (!\audioout|DACData_reg~0_combout\ & ((!\audioout|Bcount[1]~DUPLICATE_q\) # ((!\audioout|Bcount\(2)) # (!\audioout|Bcount\(3))))) ) ) ) # ( !\audioout|Bcount\(4) 
-- & ( \audioout|Bcount[0]~DUPLICATE_q\ & ( (\audioout|Bcount[1]~DUPLICATE_q\ & (!\audioout|DACData_reg~0_combout\ & (\audioout|Bcount\(2) & \audioout|Bcount\(3)))) ) ) ) # ( \audioout|Bcount\(4) & ( !\audioout|Bcount[0]~DUPLICATE_q\ & ( 
-- !\audioout|DACData_reg~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	datab => \audioout|ALT_INV_DACData_reg~0_combout\,
	datac => \audioout|ALT_INV_Bcount\(2),
	datad => \audioout|ALT_INV_Bcount\(3),
	datae => \audioout|ALT_INV_Bcount\(4),
	dataf => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	combout => \audioout|Bcount~2_combout\);

-- Location: FF_X22_Y42_N49
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

-- Location: MLABCELL_X25_Y42_N39
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

-- Location: FF_X25_Y42_N41
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

-- Location: FF_X25_Y42_N35
\i2sin|shift_reg[1]~DUPLICATE\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[1]~DUPLICATE_q\);

-- Location: FF_X25_Y42_N31
\i2sin|shift_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[1]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y42_N36
\i2sin|shift_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[3]~feeder_combout\ = ( \i2sin|shift_reg[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\,
	combout => \i2sin|shift_reg[3]~feeder_combout\);

-- Location: FF_X25_Y42_N37
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

-- Location: FF_X25_Y42_N1
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

-- Location: FF_X25_Y42_N53
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

-- Location: FF_X25_Y42_N20
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

-- Location: FF_X25_Y42_N10
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

-- Location: FF_X25_Y42_N44
\i2sin|shift_reg[8]~DUPLICATE\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[8]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y42_N45
\i2sin|shift_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[9]~feeder_combout\ = \i2sin|shift_reg[8]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg[8]~DUPLICATE_q\,
	combout => \i2sin|shift_reg[9]~feeder_combout\);

-- Location: FF_X25_Y42_N47
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

-- Location: FF_X25_Y42_N13
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

-- Location: MLABCELL_X25_Y42_N15
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

-- Location: FF_X25_Y42_N17
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

-- Location: FF_X25_Y42_N25
\i2sin|shift_reg[12]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[12]~DUPLICATE_q\);

-- Location: FF_X25_Y42_N28
\i2sin|shift_reg[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[12]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg[13]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y42_N54
\i2sin|shift_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|shift_reg[14]~feeder_combout\ = ( \i2sin|shift_reg[13]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[13]~DUPLICATE_q\,
	combout => \i2sin|shift_reg[14]~feeder_combout\);

-- Location: FF_X25_Y42_N56
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

-- Location: FF_X25_Y42_N58
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

-- Location: LABCELL_X24_Y42_N51
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

-- Location: FF_X24_Y42_N14
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

-- Location: LABCELL_X24_Y42_N15
\i2sin|i2s_in~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|i2s_in~0_combout\ = ( \i2sin|s_current_lr~q\ & ( !\LR_CLK~input_o\ ) ) # ( !\i2sin|s_current_lr~q\ & ( \LR_CLK~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_CLK~input_o\,
	dataf => \i2sin|ALT_INV_s_current_lr~q\,
	combout => \i2sin|i2s_in~0_combout\);

-- Location: FF_X24_Y42_N17
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

-- Location: LABCELL_X24_Y42_N12
\i2sin|DATA_R[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[15]~0_combout\ = ( !\i2sin|s_current_lr~q\ & ( (!\LR_CLK~input_o\ & \i2sin|s_parallel_load~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_CLK~input_o\,
	datab => \i2sin|ALT_INV_s_parallel_load~q\,
	dataf => \i2sin|ALT_INV_s_current_lr~q\,
	combout => \i2sin|DATA_R[15]~0_combout\);

-- Location: FF_X24_Y42_N53
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(15));

-- Location: LABCELL_X24_Y42_N54
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

-- Location: FF_X24_Y42_N55
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

-- Location: FF_X25_Y42_N26
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

-- Location: LABCELL_X24_Y42_N24
\i2sin|DATA_R[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[12]~feeder_combout\ = \i2sin|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sin|ALT_INV_shift_reg\(12),
	combout => \i2sin|DATA_R[12]~feeder_combout\);

-- Location: FF_X24_Y42_N26
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(12));

-- Location: LABCELL_X24_Y42_N0
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

-- Location: FF_X24_Y42_N1
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

-- Location: FF_X25_Y42_N46
\i2sin|shift_reg[9]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[9]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y42_N30
\i2sin|DATA_R[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[9]~feeder_combout\ = \i2sin|shift_reg[9]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg[9]~DUPLICATE_q\,
	combout => \i2sin|DATA_R[9]~feeder_combout\);

-- Location: FF_X24_Y42_N32
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

-- Location: LABCELL_X24_Y42_N39
\audioout|LRDATA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[9]~feeder_combout\ = ( \i2sin|DATA_R\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(9),
	combout => \audioout|LRDATA[9]~feeder_combout\);

-- Location: FF_X24_Y42_N40
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

-- Location: FF_X25_Y42_N43
\i2sin|shift_reg[8]\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(8));

-- Location: LABCELL_X24_Y42_N18
\i2sin|DATA_R[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[8]~feeder_combout\ = \i2sin|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(8),
	combout => \i2sin|DATA_R[8]~feeder_combout\);

-- Location: FF_X24_Y42_N19
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(8));

-- Location: LABCELL_X23_Y42_N54
\audioout|LRDATA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[8]~feeder_combout\ = ( \i2sin|DATA_R\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_R\(8),
	combout => \audioout|LRDATA[8]~feeder_combout\);

-- Location: FF_X23_Y42_N56
\audioout|LRDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(8));

-- Location: LABCELL_X24_Y42_N33
\i2sin|DATA_R[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[11]~feeder_combout\ = \i2sin|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg\(11),
	combout => \i2sin|DATA_R[11]~feeder_combout\);

-- Location: FF_X24_Y42_N35
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

-- Location: LABCELL_X23_Y42_N45
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

-- Location: FF_X23_Y42_N46
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

-- Location: FF_X24_Y42_N23
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

-- Location: FF_X22_Y42_N43
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

-- Location: LABCELL_X22_Y42_N42
\audioout|Mux13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~21_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(11))))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(10) & ((\audioout|Bcount\(2)))))) ) 
-- ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount[0]~DUPLICATE_q\ & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(9)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(8) & ((\audioout|Bcount\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011001100110011001100110000000011110011110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(9),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_LRDATA\(8),
	datad => \audioout|ALT_INV_LRDATA\(11),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(10),
	combout => \audioout|Mux13~21_combout\);

-- Location: FF_X25_Y42_N29
\i2sin|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[12]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(13));

-- Location: FF_X24_Y42_N49
\i2sin|DATA_R[13]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(13));

-- Location: FF_X24_Y42_N41
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

-- Location: LABCELL_X24_Y42_N48
\i2sin|DATA_R[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[14]~feeder_combout\ = ( \i2sin|shift_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(14),
	combout => \i2sin|DATA_R[14]~feeder_combout\);

-- Location: FF_X24_Y42_N50
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(14));

-- Location: FF_X22_Y42_N56
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

-- Location: LABCELL_X22_Y42_N54
\audioout|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~4_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & ((!\audioout|Mux13~21_combout\ & (((\audioout|LRDATA\(14))))) # (\audioout|Mux13~21_combout\ & (\audioout|LRDATA\(15))))) # (\audioout|Bcount\(2) & 
-- ((((\audioout|Mux13~21_combout\))))) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & (((!\audioout|Mux13~21_combout\ & (\audioout|LRDATA\(12))) # (\audioout|Mux13~21_combout\ & ((\audioout|LRDATA\(13))))))) # (\audioout|Bcount\(2) & 
-- ((((\audioout|Mux13~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(2),
	datab => \audioout|ALT_INV_LRDATA\(15),
	datac => \audioout|ALT_INV_LRDATA\(12),
	datad => \audioout|ALT_INV_Mux13~21_combout\,
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_LRDATA\(13),
	datag => \audioout|ALT_INV_LRDATA\(14),
	combout => \audioout|Mux13~4_combout\);

-- Location: LABCELL_X23_Y42_N51
\i2sin|DATA_L[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[8]~feeder_combout\ = ( \i2sin|shift_reg[8]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[8]~DUPLICATE_q\,
	combout => \i2sin|DATA_L[8]~feeder_combout\);

-- Location: LABCELL_X24_Y42_N57
\i2sin|DATA_L[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[15]~0_combout\ = ( \i2sin|s_parallel_load~q\ & ( (\LR_CLK~input_o\ & \i2sin|s_current_lr~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_CLK~input_o\,
	datac => \i2sin|ALT_INV_s_current_lr~q\,
	dataf => \i2sin|ALT_INV_s_parallel_load~q\,
	combout => \i2sin|DATA_L[15]~0_combout\);

-- Location: FF_X23_Y42_N52
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

-- Location: FF_X23_Y42_N47
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

-- Location: FF_X23_Y42_N31
\i2sin|DATA_L[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[9]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(9));

-- Location: FF_X23_Y42_N55
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

-- Location: FF_X23_Y42_N49
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

-- Location: FF_X23_Y42_N22
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

-- Location: FF_X23_Y42_N34
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

-- Location: FF_X22_Y42_N1
\audioout|LRDATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(10),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(26));

-- Location: LABCELL_X22_Y42_N0
\audioout|Mux13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~29_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & (!\audioout|Bcount[0]~DUPLICATE_q\)) # (\audioout|Bcount\(2) & ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(27))))) # 
-- (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(26))))) ) ) # ( \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Bcount\(2) & (!\audioout|Bcount[0]~DUPLICATE_q\)) # (\audioout|Bcount\(2) & ((!\audioout|Bcount[0]~DUPLICATE_q\ & 
-- (((\audioout|LRDATA\(25))))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(24))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100110001001100010011100110111001101110011011000100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(2),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_LRDATA\(24),
	datad => \audioout|ALT_INV_LRDATA\(25),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_LRDATA\(27),
	datag => \audioout|ALT_INV_LRDATA\(26),
	combout => \audioout|Mux13~29_combout\);

-- Location: FF_X25_Y42_N59
\i2sin|shift_reg[15]~DUPLICATE\ : dffeas
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
	q => \i2sin|shift_reg[15]~DUPLICATE_q\);

-- Location: FF_X23_Y42_N40
\i2sin|DATA_L[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[15]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(15));

-- Location: FF_X23_Y42_N20
\audioout|LRDATA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(15),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(31));

-- Location: FF_X23_Y42_N53
\i2sin|DATA_L[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[12]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(12));

-- Location: LABCELL_X23_Y42_N3
\audioout|LRDATA[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[28]~feeder_combout\ = ( \i2sin|DATA_L\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(12),
	combout => \audioout|LRDATA[28]~feeder_combout\);

-- Location: FF_X23_Y42_N5
\audioout|LRDATA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[28]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(28));

-- Location: FF_X23_Y42_N37
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(13));

-- Location: LABCELL_X23_Y42_N42
\audioout|LRDATA[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[29]~feeder_combout\ = ( \i2sin|DATA_L\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(13),
	combout => \audioout|LRDATA[29]~feeder_combout\);

-- Location: FF_X23_Y42_N43
\audioout|LRDATA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \audioout|LRDATA[29]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(29));

-- Location: FF_X23_Y42_N29
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

-- Location: FF_X22_Y42_N38
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

-- Location: LABCELL_X22_Y42_N36
\audioout|Mux13~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~12_combout\ = ( !\audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(30) & ((!\audioout|Bcount\(2))))))) # (\audioout|Mux13~29_combout\ & ((((\audioout|Bcount\(2)))) # (\audioout|LRDATA\(31)))) ) ) # ( 
-- \audioout|Bcount[1]~DUPLICATE_q\ & ( (!\audioout|Mux13~29_combout\ & (((\audioout|LRDATA\(28) & ((!\audioout|Bcount\(2))))))) # (\audioout|Mux13~29_combout\ & ((((\audioout|Bcount\(2)) # (\audioout|LRDATA\(29)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~29_combout\,
	datab => \audioout|ALT_INV_LRDATA\(31),
	datac => \audioout|ALT_INV_LRDATA\(28),
	datad => \audioout|ALT_INV_LRDATA\(29),
	datae => \audioout|ALT_INV_Bcount[1]~DUPLICATE_q\,
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(30),
	combout => \audioout|Mux13~12_combout\);

-- Location: FF_X25_Y42_N34
\i2sin|shift_reg[1]\ : dffeas
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(1));

-- Location: FF_X24_Y42_N28
\i2sin|DATA_R[1]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(1));

-- Location: FF_X24_Y42_N5
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

-- Location: FF_X24_Y42_N52
\i2sin|DATA_R[3]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(3));

-- Location: FF_X24_Y42_N37
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

-- Location: LABCELL_X24_Y42_N27
\i2sin|DATA_R[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[0]~feeder_combout\ = \i2sin|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sin|ALT_INV_shift_reg\(0),
	combout => \i2sin|DATA_R[0]~feeder_combout\);

-- Location: FF_X24_Y42_N29
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(0));

-- Location: FF_X24_Y42_N2
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

-- Location: FF_X25_Y42_N32
\i2sin|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[1]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|shift_reg\(2));

-- Location: LABCELL_X24_Y42_N21
\i2sin|DATA_R[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_R[2]~feeder_combout\ = \i2sin|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(2),
	combout => \i2sin|DATA_R[2]~feeder_combout\);

-- Location: FF_X24_Y42_N22
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

-- Location: FF_X24_Y42_N7
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

-- Location: LABCELL_X24_Y42_N6
\audioout|Mux13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~17_combout\ = ( !\audioout|Bcount\(1) & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2))) # (\audioout|LRDATA\(3)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(2) & \audioout|Bcount\(2)))))) ) ) # ( 
-- \audioout|Bcount\(1) & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2))) # (\audioout|LRDATA\(1)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(0) & \audioout|Bcount\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100000000111111110000000000110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(1),
	datab => \audioout|ALT_INV_LRDATA\(3),
	datac => \audioout|ALT_INV_LRDATA\(0),
	datad => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(2),
	combout => \audioout|Mux13~17_combout\);

-- Location: FF_X24_Y42_N34
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

-- Location: LABCELL_X24_Y42_N36
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

-- Location: FF_X24_Y42_N38
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

-- Location: FF_X24_Y42_N31
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(7));

-- Location: LABCELL_X24_Y42_N3
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

-- Location: FF_X24_Y42_N4
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

-- Location: FF_X24_Y42_N25
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

-- Location: FF_X24_Y42_N56
\audioout|LRDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_R\(5),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(5));

-- Location: FF_X25_Y42_N19
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

-- Location: FF_X24_Y42_N20
\i2sin|DATA_R[6]\ : dffeas
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
	ena => \i2sin|DATA_R[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_R\(6));

-- Location: FF_X24_Y42_N43
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

-- Location: LABCELL_X24_Y42_N42
\audioout|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~0_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Mux13~17_combout\ & (!\audioout|Bcount\(2) & (\audioout|LRDATA\(6)))) # (\audioout|Mux13~17_combout\ & ((((\audioout|LRDATA\(7)))) # (\audioout|Bcount\(2)))) ) ) # ( \audioout|Bcount\(1) 
-- & ( (!\audioout|Mux13~17_combout\ & (!\audioout|Bcount\(2) & (\audioout|LRDATA\(4)))) # (\audioout|Mux13~17_combout\ & ((((\audioout|LRDATA\(5)))) # (\audioout|Bcount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Mux13~17_combout\,
	datab => \audioout|ALT_INV_Bcount\(2),
	datac => \audioout|ALT_INV_LRDATA\(4),
	datad => \audioout|ALT_INV_LRDATA\(7),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(5),
	datag => \audioout|ALT_INV_LRDATA\(6),
	combout => \audioout|Mux13~0_combout\);

-- Location: LABCELL_X23_Y42_N48
\i2sin|DATA_L[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[5]~feeder_combout\ = ( \i2sin|shift_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(5),
	combout => \i2sin|DATA_L[5]~feeder_combout\);

-- Location: FF_X23_Y42_N50
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(5));

-- Location: LABCELL_X23_Y42_N0
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

-- Location: FF_X23_Y42_N1
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

-- Location: LABCELL_X23_Y42_N36
\i2sin|DATA_L[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[3]~feeder_combout\ = \i2sin|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sin|ALT_INV_shift_reg\(3),
	combout => \i2sin|DATA_L[3]~feeder_combout\);

-- Location: FF_X23_Y42_N38
\i2sin|DATA_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(3));

-- Location: FF_X23_Y42_N2
\audioout|LRDATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(3),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(19));

-- Location: LABCELL_X23_Y42_N39
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

-- Location: FF_X23_Y42_N41
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
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(0));

-- Location: FF_X23_Y42_N4
\audioout|LRDATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2sin|DATA_L\(0),
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \audioout|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audioout|LRDATA\(16));

-- Location: FF_X23_Y42_N26
\i2sin|DATA_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	asdata => \i2sin|shift_reg[1]~DUPLICATE_q\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(1));

-- Location: LABCELL_X23_Y42_N18
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

-- Location: FF_X23_Y42_N19
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

-- Location: LABCELL_X23_Y42_N27
\i2sin|DATA_L[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[2]~feeder_combout\ = ( \i2sin|shift_reg[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[2]~DUPLICATE_q\,
	combout => \i2sin|DATA_L[2]~feeder_combout\);

-- Location: FF_X23_Y42_N28
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

-- Location: FF_X23_Y42_N13
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

-- Location: LABCELL_X23_Y42_N12
\audioout|Mux13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~25_combout\ = ( !\audioout|Bcount\(1) & ( (!\audioout|Bcount[0]~DUPLICATE_q\ & ((((!\audioout|Bcount\(2)))) # (\audioout|LRDATA\(19)))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (((\audioout|LRDATA\(18) & (\audioout|Bcount\(2)))))) ) ) # ( 
-- \audioout|Bcount\(1) & ( ((!\audioout|Bcount[0]~DUPLICATE_q\ & (((!\audioout|Bcount\(2)) # (\audioout|LRDATA\(17))))) # (\audioout|Bcount[0]~DUPLICATE_q\ & (\audioout|LRDATA\(16) & (\audioout|Bcount\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110001000111110011000000001111001100010001111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(19),
	datab => \audioout|ALT_INV_Bcount[0]~DUPLICATE_q\,
	datac => \audioout|ALT_INV_LRDATA\(16),
	datad => \audioout|ALT_INV_Bcount\(2),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_LRDATA\(17),
	datag => \audioout|ALT_INV_LRDATA\(18),
	combout => \audioout|Mux13~25_combout\);

-- Location: LABCELL_X23_Y42_N33
\i2sin|DATA_L[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[4]~feeder_combout\ = ( \i2sin|shift_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(4),
	combout => \i2sin|DATA_L[4]~feeder_combout\);

-- Location: FF_X23_Y42_N35
\i2sin|DATA_L[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BIT_CLK~inputCLKENA0_outclk\,
	d => \i2sin|DATA_L[4]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \i2sin|DATA_L[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sin|DATA_L\(4));

-- Location: LABCELL_X23_Y42_N21
\audioout|LRDATA[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|LRDATA[20]~feeder_combout\ = ( \i2sin|DATA_L\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_DATA_L\(4),
	combout => \audioout|LRDATA[20]~feeder_combout\);

-- Location: FF_X23_Y42_N23
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

-- Location: LABCELL_X23_Y42_N30
\i2sin|DATA_L[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[7]~feeder_combout\ = ( \i2sin|shift_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg\(7),
	combout => \i2sin|DATA_L[7]~feeder_combout\);

-- Location: FF_X23_Y42_N32
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

-- Location: LABCELL_X23_Y42_N57
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

-- Location: FF_X23_Y42_N59
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

-- Location: LABCELL_X23_Y42_N24
\i2sin|DATA_L[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sin|DATA_L[6]~feeder_combout\ = ( \i2sin|shift_reg[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sin|ALT_INV_shift_reg[6]~DUPLICATE_q\,
	combout => \i2sin|DATA_L[6]~feeder_combout\);

-- Location: FF_X23_Y42_N25
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

-- Location: FF_X23_Y42_N7
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

-- Location: LABCELL_X23_Y42_N6
\audioout|Mux13~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~8_combout\ = ( !\audioout|Bcount\(1) & ( ((!\audioout|Mux13~25_combout\ & (\audioout|LRDATA\(22) & ((!\audioout|Bcount\(2))))) # (\audioout|Mux13~25_combout\ & (((\audioout|Bcount\(2)) # (\audioout|LRDATA\(23)))))) ) ) # ( 
-- \audioout|Bcount\(1) & ( (!\audioout|Mux13~25_combout\ & (((\audioout|LRDATA\(20) & ((!\audioout|Bcount\(2))))))) # (\audioout|Mux13~25_combout\ & ((((\audioout|Bcount\(2)))) # (\audioout|LRDATA\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_LRDATA\(21),
	datab => \audioout|ALT_INV_Mux13~25_combout\,
	datac => \audioout|ALT_INV_LRDATA\(20),
	datad => \audioout|ALT_INV_LRDATA\(23),
	datae => \audioout|ALT_INV_Bcount\(1),
	dataf => \audioout|ALT_INV_Bcount\(2),
	datag => \audioout|ALT_INV_LRDATA\(22),
	combout => \audioout|Mux13~8_combout\);

-- Location: LABCELL_X22_Y44_N12
\audioout|Mux13~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \audioout|Mux13~16_combout\ = ( \audioout|Mux13~0_combout\ & ( \audioout|Mux13~8_combout\ & ( ((!\audioout|Bcount\(4) & ((\audioout|Mux13~12_combout\))) # (\audioout|Bcount\(4) & (\audioout|Mux13~4_combout\))) # (\audioout|Bcount\(3)) ) ) ) # ( 
-- !\audioout|Mux13~0_combout\ & ( \audioout|Mux13~8_combout\ & ( (!\audioout|Bcount\(3) & ((!\audioout|Bcount\(4) & ((\audioout|Mux13~12_combout\))) # (\audioout|Bcount\(4) & (\audioout|Mux13~4_combout\)))) # (\audioout|Bcount\(3) & (!\audioout|Bcount\(4))) 
-- ) ) ) # ( \audioout|Mux13~0_combout\ & ( !\audioout|Mux13~8_combout\ & ( (!\audioout|Bcount\(3) & ((!\audioout|Bcount\(4) & ((\audioout|Mux13~12_combout\))) # (\audioout|Bcount\(4) & (\audioout|Mux13~4_combout\)))) # (\audioout|Bcount\(3) & 
-- (\audioout|Bcount\(4))) ) ) ) # ( !\audioout|Mux13~0_combout\ & ( !\audioout|Mux13~8_combout\ & ( (!\audioout|Bcount\(3) & ((!\audioout|Bcount\(4) & ((\audioout|Mux13~12_combout\))) # (\audioout|Bcount\(4) & (\audioout|Mux13~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \audioout|ALT_INV_Bcount\(3),
	datab => \audioout|ALT_INV_Bcount\(4),
	datac => \audioout|ALT_INV_Mux13~4_combout\,
	datad => \audioout|ALT_INV_Mux13~12_combout\,
	datae => \audioout|ALT_INV_Mux13~0_combout\,
	dataf => \audioout|ALT_INV_Mux13~8_combout\,
	combout => \audioout|Mux13~16_combout\);

-- Location: LABCELL_X64_Y15_N3
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


