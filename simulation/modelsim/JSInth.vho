-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
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
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "04/19/2015 15:49:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	JSInth IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	keys : IN std_logic_vector(16 DOWNTO 0);
	vol_sel : IN std_logic;
	oct_sel : IN std_logic;
	synth_sel : IN std_logic;
	vga_red : BUFFER std_logic_vector(9 DOWNTO 0);
	vga_green : BUFFER std_logic_vector(9 DOWNTO 0);
	vga_blue : BUFFER std_logic_vector(9 DOWNTO 0);
	horiz_sync : BUFFER std_logic;
	vert_sync : BUFFER std_logic;
	vga_blank : BUFFER std_logic;
	vga_clk : BUFFER std_logic
	);
END JSInth;

-- Design Ports Information
-- reset	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[6]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[12]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[13]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[15]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vol_sel	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oct_sel	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synth_sel	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JSInth IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_keys : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_vol_sel : std_logic;
SIGNAL ww_oct_sel : std_logic;
SIGNAL ww_synth_sel : std_logic;
SIGNAL ww_vga_red : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vga_green : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vga_blue : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_horiz_sync : std_logic;
SIGNAL ww_vert_sync : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \keys[4]~input_o\ : std_logic;
SIGNAL \keys[5]~input_o\ : std_logic;
SIGNAL \keys[6]~input_o\ : std_logic;
SIGNAL \keys[7]~input_o\ : std_logic;
SIGNAL \keys[8]~input_o\ : std_logic;
SIGNAL \keys[9]~input_o\ : std_logic;
SIGNAL \keys[10]~input_o\ : std_logic;
SIGNAL \keys[11]~input_o\ : std_logic;
SIGNAL \keys[12]~input_o\ : std_logic;
SIGNAL \keys[13]~input_o\ : std_logic;
SIGNAL \keys[14]~input_o\ : std_logic;
SIGNAL \keys[15]~input_o\ : std_logic;
SIGNAL \keys[16]~input_o\ : std_logic;
SIGNAL \vol_sel~input_o\ : std_logic;
SIGNAL \oct_sel~input_o\ : std_logic;
SIGNAL \synth_sel~input_o\ : std_logic;
SIGNAL \vga_red[0]~output_o\ : std_logic;
SIGNAL \vga_red[1]~output_o\ : std_logic;
SIGNAL \vga_red[2]~output_o\ : std_logic;
SIGNAL \vga_red[3]~output_o\ : std_logic;
SIGNAL \vga_red[4]~output_o\ : std_logic;
SIGNAL \vga_red[5]~output_o\ : std_logic;
SIGNAL \vga_red[6]~output_o\ : std_logic;
SIGNAL \vga_red[7]~output_o\ : std_logic;
SIGNAL \vga_red[8]~output_o\ : std_logic;
SIGNAL \vga_red[9]~output_o\ : std_logic;
SIGNAL \vga_green[0]~output_o\ : std_logic;
SIGNAL \vga_green[1]~output_o\ : std_logic;
SIGNAL \vga_green[2]~output_o\ : std_logic;
SIGNAL \vga_green[3]~output_o\ : std_logic;
SIGNAL \vga_green[4]~output_o\ : std_logic;
SIGNAL \vga_green[5]~output_o\ : std_logic;
SIGNAL \vga_green[6]~output_o\ : std_logic;
SIGNAL \vga_green[7]~output_o\ : std_logic;
SIGNAL \vga_green[8]~output_o\ : std_logic;
SIGNAL \vga_green[9]~output_o\ : std_logic;
SIGNAL \vga_blue[0]~output_o\ : std_logic;
SIGNAL \vga_blue[1]~output_o\ : std_logic;
SIGNAL \vga_blue[2]~output_o\ : std_logic;
SIGNAL \vga_blue[3]~output_o\ : std_logic;
SIGNAL \vga_blue[4]~output_o\ : std_logic;
SIGNAL \vga_blue[5]~output_o\ : std_logic;
SIGNAL \vga_blue[6]~output_o\ : std_logic;
SIGNAL \vga_blue[7]~output_o\ : std_logic;
SIGNAL \vga_blue[8]~output_o\ : std_logic;
SIGNAL \vga_blue[9]~output_o\ : std_logic;
SIGNAL \horiz_sync~output_o\ : std_logic;
SIGNAL \vert_sync~output_o\ : std_logic;
SIGNAL \vga_blank~output_o\ : std_logic;
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~q\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~15\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~17\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~18_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|h_count~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~13\ : std_logic;
SIGNAL \vgamap|videoSync|Add0~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal0~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~17\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~18_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[9]~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~11_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Equal1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~1\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count~9_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~3\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[2]~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~5\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[3]~11_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~7\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[4]~7_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~9\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~10_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[5]~3_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~11\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~12_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[6]~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~13\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~15\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~16_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[8]~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~7_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~8_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~9_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[9]~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|Add1~14_combout\ : std_logic;
SIGNAL \vgamap|videoSync|v_count[7]~5_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|LessThan6~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan35~0_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~16_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~17_combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~10_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~31_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~29_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~28_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~30_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~32_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~26_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~25_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~14_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~24_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~27_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~22_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan25~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan12~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~23_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~6_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~7_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan12~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~38_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~37_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~39_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~40_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~41_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~42_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~34_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~35_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~33_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan9~2_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~36_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~16_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan1~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~12_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~19_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~18_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~20_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~21_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~5_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan12~4_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~67_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~65_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~66_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~70_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~71_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~17_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~3_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~9_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~11_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~4_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan19~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~47_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~43_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~44_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~45_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~46_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~48_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~49_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~50_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~9_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~8_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~60_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan0~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~61_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~62_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~63_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~69_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~64_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~13_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan5~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan5~1_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~10_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~57_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~58_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~68_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~59_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~56_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~12_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~51_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~52_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~53_combout\ : std_logic;
SIGNAL \vgamap|videoGen|LessThan6~0_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~54_combout\ : std_logic;
SIGNAL \vgamap|videoGen|pixelDraw~55_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~11_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~14_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[0]~15_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress~18_combout\ : std_logic;
SIGNAL \vgamap|videoGen|colorAddress[1]~19_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~2_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~1_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~4_combout\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync~q\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|horiz_sync_out~q\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~5_combout\ : std_logic;
SIGNAL \vgamap|videoSync|process_1~6_combout\ : std_logic;
SIGNAL \vgamap|videoSync|vert_sync~q\ : std_logic;
SIGNAL \vgamap|videoSync|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \vgamap|videoSync|vert_sync_out~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_v~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on_h~q\ : std_logic;
SIGNAL \vgamap|videoSync|video_on~combout\ : std_logic;
SIGNAL \vgamap|videoSync|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \vgamap|videoSync|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoGen|colorAddress\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vgamap|videoSync|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vgamap|videoSync|pixel_column\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_keys <= keys;
ww_vol_sel <= vol_sel;
ww_oct_sel <= oct_sel;
ww_synth_sel <= synth_sel;
vga_red <= ww_vga_red;
vga_green <= ww_vga_green;
vga_blue <= ww_vga_blue;
horiz_sync <= ww_horiz_sync;
vert_sync <= ww_vert_sync;
vga_blank <= ww_vga_blank;
vga_clk <= ww_vga_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vgamap|videoGen|colorAddress\(2) & \vgamap|videoGen|colorAddress\(1) & \vgamap|videoGen|colorAddress\(0));

\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(0) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(1) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(2) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(3) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(4) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(5) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(6) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(7) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(8) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(9) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(10) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(11) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(12) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(13) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(14) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(15) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(16) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(17) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(18) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(19) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(20) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(21) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(22) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(23) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(24) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(25) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(26) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(27) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(28) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(29) <= \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vgamap|videoSync|pixel_clock_int~q\);

-- Location: IOOBUF_X18_Y73_N16
\vga_red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \vga_red[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\vga_red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \vga_red[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\vga_red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \vga_red[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\vga_red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \vga_red[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\vga_red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \vga_red[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\vga_red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \vga_red[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\vga_red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \vga_red[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\vga_red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \vga_red[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\vga_red[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \vga_red[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\vga_red[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \vga_red[9]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\vga_green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \vga_green[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\vga_green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \vga_green[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\vga_green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \vga_green[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\vga_green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \vga_green[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\vga_green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \vga_green[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\vga_green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \vga_green[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\vga_green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \vga_green[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\vga_green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \vga_green[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\vga_green[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \vga_green[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_green[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \vga_green[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\vga_blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \vga_blue[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\vga_blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \vga_blue[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\vga_blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \vga_blue[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\vga_blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \vga_blue[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\vga_blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \vga_blue[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\vga_blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \vga_blue[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\vga_blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \vga_blue[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\vga_blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \vga_blue[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\vga_blue[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \vga_blue[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\vga_blue[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoGen|colors|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \vga_blue[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\horiz_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vert_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|video_on~combout\,
	devoe => ww_devoe,
	o => \vga_blank~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vgamap|videoSync|pixel_clock_int~q\,
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y72_N18
\vgamap|videoSync|pixel_clock_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~0_combout\ = !\vgamap|videoSync|pixel_clock_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_clock_int~q\,
	combout => \vgamap|videoSync|pixel_clock_int~0_combout\);

-- Location: LCCOMB_X56_Y72_N22
\vgamap|videoSync|pixel_clock_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_clock_int~feeder_combout\ = \vgamap|videoSync|pixel_clock_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_clock_int~0_combout\,
	combout => \vgamap|videoSync|pixel_clock_int~feeder_combout\);

-- Location: FF_X56_Y72_N23
\vgamap|videoSync|pixel_clock_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoSync|pixel_clock_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_clock_int~q\);

-- Location: CLKCTRL_G12
\vgamap|videoSync|pixel_clock_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vgamap|videoSync|pixel_clock_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y71_N20
\vgamap|videoSync|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~14_combout\ = (\vgamap|videoSync|h_count\(7) & (!\vgamap|videoSync|Add0~13\)) # (!\vgamap|videoSync|h_count\(7) & ((\vgamap|videoSync|Add0~13\) # (GND)))
-- \vgamap|videoSync|Add0~15\ = CARRY((!\vgamap|videoSync|Add0~13\) # (!\vgamap|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(7),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~13\,
	combout => \vgamap|videoSync|Add0~14_combout\,
	cout => \vgamap|videoSync|Add0~15\);

-- Location: LCCOMB_X48_Y71_N22
\vgamap|videoSync|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~16_combout\ = (\vgamap|videoSync|h_count\(8) & (\vgamap|videoSync|Add0~15\ $ (GND))) # (!\vgamap|videoSync|h_count\(8) & (!\vgamap|videoSync|Add0~15\ & VCC))
-- \vgamap|videoSync|Add0~17\ = CARRY((\vgamap|videoSync|h_count\(8) & !\vgamap|videoSync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(8),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~15\,
	combout => \vgamap|videoSync|Add0~16_combout\,
	cout => \vgamap|videoSync|Add0~17\);

-- Location: LCCOMB_X47_Y71_N30
\vgamap|videoSync|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~0_combout\ = (\vgamap|videoSync|Add0~16_combout\ & !\vgamap|videoSync|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Add0~16_combout\,
	datad => \vgamap|videoSync|Equal0~3_combout\,
	combout => \vgamap|videoSync|h_count~0_combout\);

-- Location: FF_X47_Y71_N31
\vgamap|videoSync|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(8));

-- Location: LCCOMB_X48_Y71_N24
\vgamap|videoSync|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~18_combout\ = \vgamap|videoSync|Add0~17\ $ (\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|h_count\(9),
	cin => \vgamap|videoSync|Add0~17\,
	combout => \vgamap|videoSync|Add0~18_combout\);

-- Location: LCCOMB_X48_Y71_N0
\vgamap|videoSync|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~1_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~18_combout\,
	combout => \vgamap|videoSync|h_count~1_combout\);

-- Location: FF_X48_Y71_N1
\vgamap|videoSync|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(9));

-- Location: LCCOMB_X48_Y71_N6
\vgamap|videoSync|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~0_combout\ = \vgamap|videoSync|h_count\(0) $ (VCC)
-- \vgamap|videoSync|Add0~1\ = CARRY(\vgamap|videoSync|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(0),
	datad => VCC,
	combout => \vgamap|videoSync|Add0~0_combout\,
	cout => \vgamap|videoSync|Add0~1\);

-- Location: LCCOMB_X48_Y71_N2
\vgamap|videoSync|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~3_combout\ = (\vgamap|videoSync|Add0~0_combout\ & !\vgamap|videoSync|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add0~0_combout\,
	datac => \vgamap|videoSync|Equal0~3_combout\,
	combout => \vgamap|videoSync|h_count~3_combout\);

-- Location: FF_X48_Y71_N3
\vgamap|videoSync|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(0));

-- Location: LCCOMB_X48_Y71_N8
\vgamap|videoSync|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~2_combout\ = (\vgamap|videoSync|h_count\(1) & (!\vgamap|videoSync|Add0~1\)) # (!\vgamap|videoSync|h_count\(1) & ((\vgamap|videoSync|Add0~1\) # (GND)))
-- \vgamap|videoSync|Add0~3\ = CARRY((!\vgamap|videoSync|Add0~1\) # (!\vgamap|videoSync|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(1),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~1\,
	combout => \vgamap|videoSync|Add0~2_combout\,
	cout => \vgamap|videoSync|Add0~3\);

-- Location: FF_X48_Y71_N9
\vgamap|videoSync|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(1));

-- Location: LCCOMB_X48_Y71_N10
\vgamap|videoSync|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~4_combout\ = (\vgamap|videoSync|h_count\(2) & (\vgamap|videoSync|Add0~3\ $ (GND))) # (!\vgamap|videoSync|h_count\(2) & (!\vgamap|videoSync|Add0~3\ & VCC))
-- \vgamap|videoSync|Add0~5\ = CARRY((\vgamap|videoSync|h_count\(2) & !\vgamap|videoSync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(2),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~3\,
	combout => \vgamap|videoSync|Add0~4_combout\,
	cout => \vgamap|videoSync|Add0~5\);

-- Location: FF_X48_Y71_N11
\vgamap|videoSync|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(2));

-- Location: LCCOMB_X48_Y71_N26
\vgamap|videoSync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~0_combout\ = (!\vgamap|videoSync|h_count\(2) & (!\vgamap|videoSync|h_count\(0) & (!\vgamap|videoSync|h_count\(1) & !\vgamap|videoSync|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(2),
	datab => \vgamap|videoSync|h_count\(0),
	datac => \vgamap|videoSync|h_count\(1),
	datad => \vgamap|videoSync|h_count\(6),
	combout => \vgamap|videoSync|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y71_N12
\vgamap|videoSync|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~6_combout\ = (\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|Add0~5\)) # (!\vgamap|videoSync|h_count\(3) & ((\vgamap|videoSync|Add0~5\) # (GND)))
-- \vgamap|videoSync|Add0~7\ = CARRY((!\vgamap|videoSync|Add0~5\) # (!\vgamap|videoSync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(3),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~5\,
	combout => \vgamap|videoSync|Add0~6_combout\,
	cout => \vgamap|videoSync|Add0~7\);

-- Location: FF_X48_Y71_N13
\vgamap|videoSync|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(3));

-- Location: LCCOMB_X48_Y71_N14
\vgamap|videoSync|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~8_combout\ = (\vgamap|videoSync|h_count\(4) & (\vgamap|videoSync|Add0~7\ $ (GND))) # (!\vgamap|videoSync|h_count\(4) & (!\vgamap|videoSync|Add0~7\ & VCC))
-- \vgamap|videoSync|Add0~9\ = CARRY((\vgamap|videoSync|h_count\(4) & !\vgamap|videoSync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(4),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~7\,
	combout => \vgamap|videoSync|Add0~8_combout\,
	cout => \vgamap|videoSync|Add0~9\);

-- Location: FF_X48_Y71_N15
\vgamap|videoSync|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(4));

-- Location: LCCOMB_X47_Y71_N10
\vgamap|videoSync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~2_combout\ = (!\vgamap|videoSync|h_count\(4) & (!\vgamap|videoSync|h_count\(3) & (!\vgamap|videoSync|h_count\(7) & \vgamap|videoSync|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(4),
	datab => \vgamap|videoSync|h_count\(3),
	datac => \vgamap|videoSync|h_count\(7),
	datad => \vgamap|videoSync|h_count\(5),
	combout => \vgamap|videoSync|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y71_N6
\vgamap|videoSync|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~3_combout\ = (\vgamap|videoSync|h_count\(9) & (\vgamap|videoSync|Equal0~0_combout\ & (\vgamap|videoSync|h_count\(8) & \vgamap|videoSync|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(9),
	datab => \vgamap|videoSync|Equal0~0_combout\,
	datac => \vgamap|videoSync|h_count\(8),
	datad => \vgamap|videoSync|Equal0~2_combout\,
	combout => \vgamap|videoSync|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y71_N16
\vgamap|videoSync|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~10_combout\ = (\vgamap|videoSync|h_count\(5) & (!\vgamap|videoSync|Add0~9\)) # (!\vgamap|videoSync|h_count\(5) & ((\vgamap|videoSync|Add0~9\) # (GND)))
-- \vgamap|videoSync|Add0~11\ = CARRY((!\vgamap|videoSync|Add0~9\) # (!\vgamap|videoSync|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(5),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~9\,
	combout => \vgamap|videoSync|Add0~10_combout\,
	cout => \vgamap|videoSync|Add0~11\);

-- Location: LCCOMB_X48_Y71_N30
\vgamap|videoSync|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|h_count~2_combout\ = (!\vgamap|videoSync|Equal0~3_combout\ & \vgamap|videoSync|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|Equal0~3_combout\,
	datad => \vgamap|videoSync|Add0~10_combout\,
	combout => \vgamap|videoSync|h_count~2_combout\);

-- Location: FF_X48_Y71_N31
\vgamap|videoSync|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(5));

-- Location: LCCOMB_X48_Y71_N18
\vgamap|videoSync|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add0~12_combout\ = (\vgamap|videoSync|h_count\(6) & (\vgamap|videoSync|Add0~11\ $ (GND))) # (!\vgamap|videoSync|h_count\(6) & (!\vgamap|videoSync|Add0~11\ & VCC))
-- \vgamap|videoSync|Add0~13\ = CARRY((\vgamap|videoSync|h_count\(6) & !\vgamap|videoSync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|h_count\(6),
	datad => VCC,
	cin => \vgamap|videoSync|Add0~11\,
	combout => \vgamap|videoSync|Add0~12_combout\,
	cout => \vgamap|videoSync|Add0~13\);

-- Location: FF_X48_Y71_N19
\vgamap|videoSync|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(6));

-- Location: FF_X48_Y71_N21
\vgamap|videoSync|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|h_count\(7));

-- Location: LCCOMB_X47_Y71_N14
\vgamap|videoSync|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan5~0_combout\ = ((!\vgamap|videoSync|h_count\(8) & !\vgamap|videoSync|h_count\(7))) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|h_count\(7),
	combout => \vgamap|videoSync|LessThan5~0_combout\);

-- Location: FF_X47_Y71_N11
\vgamap|videoSync|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(7),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(7));

-- Location: FF_X47_Y71_N15
\vgamap|videoSync|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(9),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(9));

-- Location: FF_X47_Y71_N7
\vgamap|videoSync|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(8),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(8));

-- Location: LCCOMB_X47_Y71_N2
\vgamap|videoGen|pixelDraw~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~8_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(9) & !\vgamap|videoSync|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~8_combout\);

-- Location: LCCOMB_X47_Y71_N16
\vgamap|videoSync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal0~1_combout\ = (\vgamap|videoSync|h_count\(9) & \vgamap|videoSync|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|Equal0~0_combout\,
	combout => \vgamap|videoSync|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y71_N26
\vgamap|videoSync|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~16_combout\ = (\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|Add1~15\ $ (GND))) # (!\vgamap|videoSync|v_count\(8) & (!\vgamap|videoSync|Add1~15\ & VCC))
-- \vgamap|videoSync|Add1~17\ = CARRY((\vgamap|videoSync|v_count\(8) & !\vgamap|videoSync|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(8),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~15\,
	combout => \vgamap|videoSync|Add1~16_combout\,
	cout => \vgamap|videoSync|Add1~17\);

-- Location: LCCOMB_X45_Y71_N28
\vgamap|videoSync|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~18_combout\ = \vgamap|videoSync|v_count\(9) $ (\vgamap|videoSync|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(9),
	cin => \vgamap|videoSync|Add1~17\,
	combout => \vgamap|videoSync|Add1~18_combout\);

-- Location: LCCOMB_X46_Y71_N8
\vgamap|videoSync|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[9]~2_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count[4]~0_combout\ & ((\vgamap|videoSync|Add1~18_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(9)) # 
-- ((\vgamap|videoSync|v_count[4]~0_combout\ & \vgamap|videoSync|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|v_count[4]~0_combout\,
	datac => \vgamap|videoSync|v_count\(9),
	datad => \vgamap|videoSync|Add1~18_combout\,
	combout => \vgamap|videoSync|v_count[9]~2_combout\);

-- Location: FF_X46_Y71_N9
\vgamap|videoSync|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(9));

-- Location: LCCOMB_X47_Y71_N4
\vgamap|videoSync|process_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~10_combout\ = (!\vgamap|videoSync|v_count\(9)) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(9),
	datad => \vgamap|videoSync|v_count\(9),
	combout => \vgamap|videoSync|process_1~10_combout\);

-- Location: LCCOMB_X48_Y71_N28
\vgamap|videoSync|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~0_combout\ = (!\vgamap|videoSync|h_count\(5) & (!\vgamap|videoSync|h_count\(6) & ((!\vgamap|videoSync|h_count\(3)) # (!\vgamap|videoSync|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(5),
	datab => \vgamap|videoSync|h_count\(6),
	datac => \vgamap|videoSync|h_count\(4),
	datad => \vgamap|videoSync|h_count\(3),
	combout => \vgamap|videoSync|process_1~0_combout\);

-- Location: LCCOMB_X47_Y71_N20
\vgamap|videoSync|process_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~11_combout\ = (\vgamap|videoSync|process_1~10_combout\) # ((!\vgamap|videoSync|h_count\(8) & ((\vgamap|videoSync|process_1~0_combout\) # (!\vgamap|videoSync|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(7),
	datab => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|process_1~10_combout\,
	datad => \vgamap|videoSync|process_1~0_combout\,
	combout => \vgamap|videoSync|process_1~11_combout\);

-- Location: LCCOMB_X48_Y71_N4
\vgamap|videoSync|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~3_combout\ = (\vgamap|videoSync|h_count\(4) & \vgamap|videoSync|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|h_count\(4),
	datad => \vgamap|videoSync|h_count\(3),
	combout => \vgamap|videoSync|process_1~3_combout\);

-- Location: LCCOMB_X47_Y71_N26
\vgamap|videoSync|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Equal1~0_combout\ = (\vgamap|videoSync|h_count\(5)) # ((\vgamap|videoSync|h_count\(8)) # ((!\vgamap|videoSync|process_1~3_combout\) # (!\vgamap|videoSync|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(5),
	datab => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|h_count\(7),
	datad => \vgamap|videoSync|process_1~3_combout\,
	combout => \vgamap|videoSync|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y71_N28
\vgamap|videoSync|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~0_combout\ = (\vgamap|videoSync|Equal0~1_combout\ & (!\vgamap|videoSync|Equal1~0_combout\ & ((\vgamap|videoSync|process_1~9_combout\) # (\vgamap|videoSync|process_1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~9_combout\,
	datab => \vgamap|videoSync|Equal0~1_combout\,
	datac => \vgamap|videoSync|process_1~11_combout\,
	datad => \vgamap|videoSync|Equal1~0_combout\,
	combout => \vgamap|videoSync|v_count[4]~0_combout\);

-- Location: LCCOMB_X45_Y71_N10
\vgamap|videoSync|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~0_combout\ = \vgamap|videoSync|v_count\(0) $ (VCC)
-- \vgamap|videoSync|Add1~1\ = CARRY(\vgamap|videoSync|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(0),
	datad => VCC,
	combout => \vgamap|videoSync|Add1~0_combout\,
	cout => \vgamap|videoSync|Add1~1\);

-- Location: LCCOMB_X46_Y71_N20
\vgamap|videoSync|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~8_combout\ = (\vgamap|videoSync|Add1~0_combout\ & ((\vgamap|videoSync|process_1~11_combout\) # (\vgamap|videoSync|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~11_combout\,
	datac => \vgamap|videoSync|process_1~9_combout\,
	datad => \vgamap|videoSync|Add1~0_combout\,
	combout => \vgamap|videoSync|v_count~8_combout\);

-- Location: FF_X46_Y71_N21
\vgamap|videoSync|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~8_combout\,
	ena => \vgamap|videoSync|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(0));

-- Location: LCCOMB_X45_Y71_N12
\vgamap|videoSync|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~2_combout\ = (\vgamap|videoSync|v_count\(1) & (!\vgamap|videoSync|Add1~1\)) # (!\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|Add1~1\) # (GND)))
-- \vgamap|videoSync|Add1~3\ = CARRY((!\vgamap|videoSync|Add1~1\) # (!\vgamap|videoSync|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~1\,
	combout => \vgamap|videoSync|Add1~2_combout\,
	cout => \vgamap|videoSync|Add1~3\);

-- Location: LCCOMB_X46_Y71_N6
\vgamap|videoSync|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count~9_combout\ = (\vgamap|videoSync|Add1~2_combout\ & ((\vgamap|videoSync|process_1~11_combout\) # (\vgamap|videoSync|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~11_combout\,
	datac => \vgamap|videoSync|process_1~9_combout\,
	datad => \vgamap|videoSync|Add1~2_combout\,
	combout => \vgamap|videoSync|v_count~9_combout\);

-- Location: FF_X46_Y71_N7
\vgamap|videoSync|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count~9_combout\,
	ena => \vgamap|videoSync|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(1));

-- Location: LCCOMB_X45_Y71_N14
\vgamap|videoSync|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~4_combout\ = (\vgamap|videoSync|v_count\(2) & (\vgamap|videoSync|Add1~3\ $ (GND))) # (!\vgamap|videoSync|v_count\(2) & (!\vgamap|videoSync|Add1~3\ & VCC))
-- \vgamap|videoSync|Add1~5\ = CARRY((\vgamap|videoSync|v_count\(2) & !\vgamap|videoSync|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(2),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~3\,
	combout => \vgamap|videoSync|Add1~4_combout\,
	cout => \vgamap|videoSync|Add1~5\);

-- Location: LCCOMB_X46_Y71_N4
\vgamap|videoSync|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[2]~10_combout\ = (\vgamap|videoSync|Add1~4_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(2))))) # (!\vgamap|videoSync|Add1~4_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~4_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(2),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[2]~10_combout\);

-- Location: FF_X46_Y71_N5
\vgamap|videoSync|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(2));

-- Location: LCCOMB_X45_Y71_N16
\vgamap|videoSync|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~6_combout\ = (\vgamap|videoSync|v_count\(3) & (!\vgamap|videoSync|Add1~5\)) # (!\vgamap|videoSync|v_count\(3) & ((\vgamap|videoSync|Add1~5\) # (GND)))
-- \vgamap|videoSync|Add1~7\ = CARRY((!\vgamap|videoSync|Add1~5\) # (!\vgamap|videoSync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(3),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~5\,
	combout => \vgamap|videoSync|Add1~6_combout\,
	cout => \vgamap|videoSync|Add1~7\);

-- Location: LCCOMB_X45_Y71_N4
\vgamap|videoSync|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[3]~11_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|Add1~6_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(3)) # 
-- ((\vgamap|videoSync|Add1~6_combout\ & \vgamap|videoSync|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|Add1~6_combout\,
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[3]~11_combout\);

-- Location: FF_X45_Y71_N5
\vgamap|videoSync|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(3));

-- Location: LCCOMB_X45_Y71_N18
\vgamap|videoSync|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~8_combout\ = (\vgamap|videoSync|v_count\(4) & (\vgamap|videoSync|Add1~7\ $ (GND))) # (!\vgamap|videoSync|v_count\(4) & (!\vgamap|videoSync|Add1~7\ & VCC))
-- \vgamap|videoSync|Add1~9\ = CARRY((\vgamap|videoSync|v_count\(4) & !\vgamap|videoSync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(4),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~7\,
	combout => \vgamap|videoSync|Add1~8_combout\,
	cout => \vgamap|videoSync|Add1~9\);

-- Location: LCCOMB_X45_Y71_N30
\vgamap|videoSync|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[4]~7_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|Add1~8_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(4)) # 
-- ((\vgamap|videoSync|Add1~8_combout\ & \vgamap|videoSync|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|Add1~8_combout\,
	datac => \vgamap|videoSync|v_count\(4),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[4]~7_combout\);

-- Location: FF_X45_Y71_N31
\vgamap|videoSync|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(4));

-- Location: LCCOMB_X45_Y71_N20
\vgamap|videoSync|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~10_combout\ = (\vgamap|videoSync|v_count\(5) & (!\vgamap|videoSync|Add1~9\)) # (!\vgamap|videoSync|v_count\(5) & ((\vgamap|videoSync|Add1~9\) # (GND)))
-- \vgamap|videoSync|Add1~11\ = CARRY((!\vgamap|videoSync|Add1~9\) # (!\vgamap|videoSync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(5),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~9\,
	combout => \vgamap|videoSync|Add1~10_combout\,
	cout => \vgamap|videoSync|Add1~11\);

-- Location: LCCOMB_X45_Y71_N6
\vgamap|videoSync|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[5]~3_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|Add1~10_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(5)) # 
-- ((\vgamap|videoSync|Add1~10_combout\ & \vgamap|videoSync|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|Add1~10_combout\,
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[5]~3_combout\);

-- Location: FF_X45_Y71_N7
\vgamap|videoSync|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(5));

-- Location: LCCOMB_X45_Y71_N22
\vgamap|videoSync|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~12_combout\ = (\vgamap|videoSync|v_count\(6) & (\vgamap|videoSync|Add1~11\ $ (GND))) # (!\vgamap|videoSync|v_count\(6) & (!\vgamap|videoSync|Add1~11\ & VCC))
-- \vgamap|videoSync|Add1~13\ = CARRY((\vgamap|videoSync|v_count\(6) & !\vgamap|videoSync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~11\,
	combout => \vgamap|videoSync|Add1~12_combout\,
	cout => \vgamap|videoSync|Add1~13\);

-- Location: LCCOMB_X46_Y71_N30
\vgamap|videoSync|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[6]~4_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count[4]~0_combout\ & ((\vgamap|videoSync|Add1~12_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(6)) # 
-- ((\vgamap|videoSync|v_count[4]~0_combout\ & \vgamap|videoSync|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|v_count[4]~0_combout\,
	datac => \vgamap|videoSync|v_count\(6),
	datad => \vgamap|videoSync|Add1~12_combout\,
	combout => \vgamap|videoSync|v_count[6]~4_combout\);

-- Location: FF_X46_Y71_N31
\vgamap|videoSync|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(6));

-- Location: LCCOMB_X45_Y71_N24
\vgamap|videoSync|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|Add1~14_combout\ = (\vgamap|videoSync|v_count\(7) & (!\vgamap|videoSync|Add1~13\)) # (!\vgamap|videoSync|v_count\(7) & ((\vgamap|videoSync|Add1~13\) # (GND)))
-- \vgamap|videoSync|Add1~15\ = CARRY((!\vgamap|videoSync|Add1~13\) # (!\vgamap|videoSync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|v_count\(7),
	datad => VCC,
	cin => \vgamap|videoSync|Add1~13\,
	combout => \vgamap|videoSync|Add1~14_combout\,
	cout => \vgamap|videoSync|Add1~15\);

-- Location: LCCOMB_X45_Y71_N8
\vgamap|videoSync|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[8]~6_combout\ = (\vgamap|videoSync|Add1~16_combout\ & ((\vgamap|videoSync|v_count[4]~0_combout\) # ((!\vgamap|videoSync|v_count[9]~1_combout\ & \vgamap|videoSync|v_count\(8))))) # (!\vgamap|videoSync|Add1~16_combout\ & 
-- (!\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|Add1~16_combout\,
	datab => \vgamap|videoSync|v_count[9]~1_combout\,
	datac => \vgamap|videoSync|v_count\(8),
	datad => \vgamap|videoSync|v_count[4]~0_combout\,
	combout => \vgamap|videoSync|v_count[8]~6_combout\);

-- Location: FF_X45_Y71_N9
\vgamap|videoSync|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(8));

-- Location: LCCOMB_X46_Y71_N22
\vgamap|videoSync|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~7_combout\ = (((!\vgamap|videoSync|v_count\(0) & !\vgamap|videoSync|v_count\(1))) # (!\vgamap|videoSync|v_count\(3))) # (!\vgamap|videoSync|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(0),
	datab => \vgamap|videoSync|v_count\(2),
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count\(1),
	combout => \vgamap|videoSync|process_1~7_combout\);

-- Location: LCCOMB_X46_Y71_N16
\vgamap|videoSync|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~8_combout\ = (!\vgamap|videoSync|v_count\(6) & (!\vgamap|videoSync|v_count\(7) & (!\vgamap|videoSync|v_count\(5) & !\vgamap|videoSync|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datab => \vgamap|videoSync|v_count\(7),
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count\(4),
	combout => \vgamap|videoSync|process_1~8_combout\);

-- Location: LCCOMB_X46_Y71_N26
\vgamap|videoSync|process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~9_combout\ = (!\vgamap|videoSync|v_count\(8) & (\vgamap|videoSync|process_1~7_combout\ & \vgamap|videoSync|process_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(8),
	datac => \vgamap|videoSync|process_1~7_combout\,
	datad => \vgamap|videoSync|process_1~8_combout\,
	combout => \vgamap|videoSync|process_1~9_combout\);

-- Location: LCCOMB_X46_Y71_N2
\vgamap|videoSync|v_count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[9]~1_combout\ = (\vgamap|videoSync|process_1~9_combout\ & (!\vgamap|videoSync|Equal1~0_combout\ & ((\vgamap|videoSync|Equal0~1_combout\)))) # (!\vgamap|videoSync|process_1~9_combout\ & (((!\vgamap|videoSync|Equal1~0_combout\ & 
-- \vgamap|videoSync|Equal0~1_combout\)) # (!\vgamap|videoSync|process_1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~9_combout\,
	datab => \vgamap|videoSync|Equal1~0_combout\,
	datac => \vgamap|videoSync|process_1~11_combout\,
	datad => \vgamap|videoSync|Equal0~1_combout\,
	combout => \vgamap|videoSync|v_count[9]~1_combout\);

-- Location: LCCOMB_X46_Y71_N24
\vgamap|videoSync|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|v_count[7]~5_combout\ = (\vgamap|videoSync|v_count[9]~1_combout\ & (\vgamap|videoSync|v_count[4]~0_combout\ & ((\vgamap|videoSync|Add1~14_combout\)))) # (!\vgamap|videoSync|v_count[9]~1_combout\ & ((\vgamap|videoSync|v_count\(7)) # 
-- ((\vgamap|videoSync|v_count[4]~0_combout\ & \vgamap|videoSync|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count[9]~1_combout\,
	datab => \vgamap|videoSync|v_count[4]~0_combout\,
	datac => \vgamap|videoSync|v_count\(7),
	datad => \vgamap|videoSync|Add1~14_combout\,
	combout => \vgamap|videoSync|v_count[7]~5_combout\);

-- Location: FF_X46_Y71_N25
\vgamap|videoSync|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|v_count\(7));

-- Location: LCCOMB_X45_Y72_N28
\vgamap|videoSync|pixel_row[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_row[7]~feeder_combout\ = \vgamap|videoSync|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|v_count\(7),
	combout => \vgamap|videoSync|pixel_row[7]~feeder_combout\);

-- Location: LCCOMB_X46_Y71_N14
\vgamap|videoSync|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~0_combout\ = (\vgamap|videoSync|v_count\(6) & (\vgamap|videoSync|v_count\(7) & (\vgamap|videoSync|v_count\(5) & \vgamap|videoSync|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(6),
	datab => \vgamap|videoSync|v_count\(7),
	datac => \vgamap|videoSync|v_count\(5),
	datad => \vgamap|videoSync|v_count\(8),
	combout => \vgamap|videoSync|LessThan6~0_combout\);

-- Location: LCCOMB_X46_Y71_N18
\vgamap|videoSync|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~1_combout\ = (\vgamap|videoSync|v_count\(1)) # ((\vgamap|videoSync|v_count\(2)) # ((\vgamap|videoSync|v_count\(3)) # (\vgamap|videoSync|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datab => \vgamap|videoSync|v_count\(2),
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count\(0),
	combout => \vgamap|videoSync|LessThan6~1_combout\);

-- Location: LCCOMB_X46_Y71_N0
\vgamap|videoSync|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|LessThan6~2_combout\ = (!\vgamap|videoSync|v_count\(9) & (((!\vgamap|videoSync|v_count\(4) & !\vgamap|videoSync|LessThan6~1_combout\)) # (!\vgamap|videoSync|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(9),
	datab => \vgamap|videoSync|v_count\(4),
	datac => \vgamap|videoSync|LessThan6~0_combout\,
	datad => \vgamap|videoSync|LessThan6~1_combout\,
	combout => \vgamap|videoSync|LessThan6~2_combout\);

-- Location: FF_X45_Y72_N29
\vgamap|videoSync|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|pixel_row[7]~feeder_combout\,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(7));

-- Location: FF_X45_Y72_N15
\vgamap|videoSync|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(2),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(2));

-- Location: FF_X45_Y72_N9
\vgamap|videoSync|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(4),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(4));

-- Location: FF_X45_Y72_N13
\vgamap|videoSync|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(5),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(5));

-- Location: FF_X45_Y72_N25
\vgamap|videoSync|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(3),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(3));

-- Location: LCCOMB_X45_Y72_N12
\vgamap|videoGen|LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan35~0_combout\ = ((!\vgamap|videoSync|pixel_row\(2) & (!\vgamap|videoSync|pixel_row\(4) & !\vgamap|videoSync|pixel_row\(3)))) # (!\vgamap|videoSync|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(5),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|LessThan35~0_combout\);

-- Location: FF_X45_Y72_N11
\vgamap|videoSync|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(6),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(6));

-- Location: FF_X45_Y72_N23
\vgamap|videoSync|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(8),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(8));

-- Location: LCCOMB_X45_Y72_N18
\vgamap|videoSync|pixel_row[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_row[1]~feeder_combout\ = \vgamap|videoSync|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|v_count\(1),
	combout => \vgamap|videoSync|pixel_row[1]~feeder_combout\);

-- Location: FF_X45_Y72_N19
\vgamap|videoSync|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|pixel_row[1]~feeder_combout\,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(1));

-- Location: FF_X45_Y72_N5
\vgamap|videoSync|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|v_count\(0),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_row\(0));

-- Location: LCCOMB_X45_Y72_N26
\vgamap|videoGen|colorAddress~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~1_combout\ = (\vgamap|videoSync|pixel_row\(3)) # ((\vgamap|videoSync|pixel_row\(2) & ((\vgamap|videoSync|pixel_row\(1)) # (\vgamap|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(1),
	datab => \vgamap|videoSync|pixel_row\(2),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|colorAddress~1_combout\);

-- Location: LCCOMB_X45_Y72_N8
\vgamap|videoGen|colorAddress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~0_combout\ = (\vgamap|videoSync|pixel_row\(5)) # ((\vgamap|videoSync|pixel_row\(6)) # (\vgamap|videoSync|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|colorAddress~0_combout\);

-- Location: LCCOMB_X45_Y72_N16
\vgamap|videoGen|colorAddress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~2_combout\ = (!\vgamap|videoSync|pixel_row\(8) & ((\vgamap|videoGen|colorAddress~0_combout\) # ((\vgamap|videoSync|pixel_row\(4) & \vgamap|videoGen|colorAddress~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(8),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoGen|colorAddress~1_combout\,
	datad => \vgamap|videoGen|colorAddress~0_combout\,
	combout => \vgamap|videoGen|colorAddress~2_combout\);

-- Location: LCCOMB_X45_Y72_N10
\vgamap|videoGen|pixelDraw~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~16_combout\ = (!\vgamap|videoSync|pixel_row\(7) & (\vgamap|videoGen|colorAddress~2_combout\ & ((\vgamap|videoGen|LessThan35~0_combout\) # (!\vgamap|videoSync|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(7),
	datab => \vgamap|videoGen|LessThan35~0_combout\,
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoGen|colorAddress~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~16_combout\);

-- Location: LCCOMB_X45_Y72_N24
\vgamap|videoGen|pixelDraw~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~17_combout\ = (!\vgamap|videoSync|pixel_column\(9) & \vgamap|videoGen|pixelDraw~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoGen|pixelDraw~16_combout\,
	combout => \vgamap|videoGen|pixelDraw~17_combout\);

-- Location: FF_X48_Y72_N13
\vgamap|videoSync|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(6),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(6));

-- Location: FF_X49_Y72_N15
\vgamap|videoSync|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(0),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(0));

-- Location: FF_X49_Y72_N31
\vgamap|videoSync|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(2),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(2));

-- Location: LCCOMB_X49_Y72_N24
\vgamap|videoSync|pixel_column[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|pixel_column[1]~feeder_combout\ = \vgamap|videoSync|h_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|h_count\(1),
	combout => \vgamap|videoSync|pixel_column[1]~feeder_combout\);

-- Location: FF_X49_Y72_N25
\vgamap|videoSync|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|pixel_column[1]~feeder_combout\,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(1));

-- Location: LCCOMB_X49_Y72_N30
\vgamap|videoGen|pixelDraw~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~10_combout\ = (\vgamap|videoSync|pixel_column\(0)) # ((\vgamap|videoSync|pixel_column\(2)) # (\vgamap|videoSync|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~10_combout\);

-- Location: FF_X48_Y72_N5
\vgamap|videoSync|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(5),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(5));

-- Location: FF_X48_Y72_N23
\vgamap|videoSync|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(4),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(4));

-- Location: FF_X49_Y72_N9
\vgamap|videoSync|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|h_count\(3),
	sload => VCC,
	ena => \vgamap|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|pixel_column\(3));

-- Location: LCCOMB_X50_Y72_N30
\vgamap|videoGen|pixelDraw~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~31_combout\ = ((!\vgamap|videoSync|pixel_column\(4) & ((!\vgamap|videoSync|pixel_column\(3)) # (!\vgamap|videoGen|pixelDraw~10_combout\)))) # (!\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~10_combout\,
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~31_combout\);

-- Location: LCCOMB_X50_Y72_N14
\vgamap|videoGen|pixelDraw~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~29_combout\ = (\vgamap|videoSync|pixel_column\(5) & \vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~29_combout\);

-- Location: LCCOMB_X50_Y72_N16
\vgamap|videoGen|pixelDraw~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~28_combout\ = (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~28_combout\);

-- Location: LCCOMB_X50_Y72_N0
\vgamap|videoGen|pixelDraw~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~30_combout\ = (\vgamap|videoGen|pixelDraw~10_combout\ & (!\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~29_combout\ & \vgamap|videoGen|pixelDraw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~10_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~29_combout\,
	datad => \vgamap|videoGen|pixelDraw~28_combout\,
	combout => \vgamap|videoGen|pixelDraw~30_combout\);

-- Location: LCCOMB_X50_Y72_N24
\vgamap|videoGen|pixelDraw~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~32_combout\ = (\vgamap|videoGen|pixelDraw~30_combout\) # ((!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|pixelDraw~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~31_combout\,
	datad => \vgamap|videoGen|pixelDraw~30_combout\,
	combout => \vgamap|videoGen|pixelDraw~32_combout\);

-- Location: LCCOMB_X47_Y72_N8
\vgamap|videoGen|pixelDraw~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~26_combout\ = (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoSync|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~26_combout\);

-- Location: LCCOMB_X48_Y72_N8
\vgamap|videoGen|pixelDraw~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~25_combout\ = (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~25_combout\);

-- Location: LCCOMB_X48_Y72_N30
\vgamap|videoGen|pixelDraw~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~14_combout\ = (!\vgamap|videoSync|pixel_column\(5) & (!\vgamap|videoSync|pixel_column\(4) & !\vgamap|videoSync|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~14_combout\);

-- Location: LCCOMB_X47_Y72_N6
\vgamap|videoGen|pixelDraw~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~24_combout\ = (!\vgamap|videoSync|pixel_column\(2) & (!\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoGen|pixelDraw~14_combout\ & \vgamap|videoGen|pixelDraw~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoGen|pixelDraw~14_combout\,
	datad => \vgamap|videoGen|pixelDraw~8_combout\,
	combout => \vgamap|videoGen|pixelDraw~24_combout\);

-- Location: LCCOMB_X47_Y72_N14
\vgamap|videoGen|pixelDraw~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~27_combout\ = (\vgamap|videoGen|pixelDraw~24_combout\) # ((!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|pixelDraw~26_combout\ & \vgamap|videoGen|pixelDraw~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|pixelDraw~26_combout\,
	datac => \vgamap|videoGen|pixelDraw~25_combout\,
	datad => \vgamap|videoGen|pixelDraw~24_combout\,
	combout => \vgamap|videoGen|pixelDraw~27_combout\);

-- Location: LCCOMB_X47_Y71_N8
\vgamap|videoGen|pixelDraw~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~22_combout\ = (\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(5) & \vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~22_combout\);

-- Location: LCCOMB_X47_Y71_N22
\vgamap|videoGen|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan25~0_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (((!\vgamap|videoSync|pixel_column\(4)) # (!\vgamap|videoSync|pixel_column\(3))) # (!\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|LessThan25~0_combout\);

-- Location: LCCOMB_X48_Y72_N14
\vgamap|videoGen|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan12~2_combout\ = (!\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|LessThan12~2_combout\);

-- Location: LCCOMB_X47_Y71_N24
\vgamap|videoGen|pixelDraw~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~23_combout\ = (\vgamap|videoSync|pixel_column\(8) & (((\vgamap|videoGen|LessThan25~0_combout\ & \vgamap|videoGen|LessThan12~2_combout\)))) # (!\vgamap|videoSync|pixel_column\(8) & (\vgamap|videoGen|pixelDraw~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~22_combout\,
	datac => \vgamap|videoGen|LessThan25~0_combout\,
	datad => \vgamap|videoGen|LessThan12~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~23_combout\);

-- Location: LCCOMB_X46_Y72_N6
\vgamap|videoGen|colorAddress[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~6_combout\ = ((!\vgamap|videoGen|pixelDraw~27_combout\ & ((\vgamap|videoSync|pixel_column\(9)) # (!\vgamap|videoGen|pixelDraw~23_combout\)))) # (!\vgamap|videoGen|pixelDraw~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~16_combout\,
	datab => \vgamap|videoSync|pixel_column\(9),
	datac => \vgamap|videoGen|pixelDraw~27_combout\,
	datad => \vgamap|videoGen|pixelDraw~23_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~6_combout\);

-- Location: LCCOMB_X46_Y72_N12
\vgamap|videoGen|colorAddress[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~7_combout\ = (\vgamap|videoGen|colorAddress[0]~6_combout\ & ((\vgamap|videoSync|pixel_column\(8)) # ((!\vgamap|videoGen|pixelDraw~32_combout\) # (!\vgamap|videoGen|pixelDraw~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~17_combout\,
	datac => \vgamap|videoGen|pixelDraw~32_combout\,
	datad => \vgamap|videoGen|colorAddress[0]~6_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~7_combout\);

-- Location: LCCOMB_X49_Y72_N20
\vgamap|videoGen|LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan12~3_combout\ = (!\vgamap|videoSync|pixel_column\(2) & (!\vgamap|videoSync|pixel_column\(3) & ((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan12~3_combout\);

-- Location: LCCOMB_X49_Y72_N10
\vgamap|videoGen|pixelDraw~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~38_combout\ = (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan12~3_combout\) # (!\vgamap|videoSync|pixel_column\(4))))) # (!\vgamap|videoSync|pixel_column\(6) & 
-- (((\vgamap|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan12~3_combout\,
	combout => \vgamap|videoGen|pixelDraw~38_combout\);

-- Location: LCCOMB_X50_Y72_N22
\vgamap|videoGen|pixelDraw~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~37_combout\ = (\vgamap|videoSync|pixel_column\(8) & !\vgamap|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoSync|pixel_column\(7),
	combout => \vgamap|videoGen|pixelDraw~37_combout\);

-- Location: LCCOMB_X49_Y72_N16
\vgamap|videoGen|pixelDraw~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~39_combout\ = (\vgamap|videoSync|pixel_column\(2) & \vgamap|videoSync|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~39_combout\);

-- Location: LCCOMB_X49_Y72_N22
\vgamap|videoGen|pixelDraw~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~40_combout\ = (\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(4)) # ((\vgamap|videoSync|pixel_column\(0) & \vgamap|videoGen|pixelDraw~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoGen|pixelDraw~39_combout\,
	combout => \vgamap|videoGen|pixelDraw~40_combout\);

-- Location: LCCOMB_X49_Y72_N4
\vgamap|videoGen|pixelDraw~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~41_combout\ = (!\vgamap|videoSync|pixel_column\(9) & ((\vgamap|videoGen|pixelDraw~40_combout\) # (\vgamap|videoSync|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~40_combout\,
	datac => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|pixelDraw~41_combout\);

-- Location: LCCOMB_X46_Y72_N22
\vgamap|videoGen|pixelDraw~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~42_combout\ = (\vgamap|videoGen|pixelDraw~38_combout\ & (\vgamap|videoGen|pixelDraw~37_combout\ & (\vgamap|videoGen|pixelDraw~41_combout\ & \vgamap|videoGen|pixelDraw~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~38_combout\,
	datab => \vgamap|videoGen|pixelDraw~37_combout\,
	datac => \vgamap|videoGen|pixelDraw~41_combout\,
	datad => \vgamap|videoGen|pixelDraw~16_combout\,
	combout => \vgamap|videoGen|pixelDraw~42_combout\);

-- Location: LCCOMB_X46_Y72_N20
\vgamap|videoGen|pixelDraw~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~34_combout\ = (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(4)) # (\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~34_combout\);

-- Location: LCCOMB_X46_Y72_N30
\vgamap|videoGen|pixelDraw~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~35_combout\ = ((!\vgamap|videoSync|pixel_column\(4) & ((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(2))))) # (!\vgamap|videoGen|pixelDraw~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoGen|pixelDraw~34_combout\,
	combout => \vgamap|videoGen|pixelDraw~35_combout\);

-- Location: LCCOMB_X47_Y71_N18
\vgamap|videoGen|pixelDraw~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~33_combout\ = (!\vgamap|videoSync|pixel_column\(7) & !\vgamap|videoSync|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoSync|pixel_column\(8),
	combout => \vgamap|videoGen|pixelDraw~33_combout\);

-- Location: LCCOMB_X49_Y72_N6
\vgamap|videoGen|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~0_combout\ = (\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(2)) # (\vgamap|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan9~0_combout\);

-- Location: LCCOMB_X50_Y72_N18
\vgamap|videoGen|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~1_combout\ = (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|LessThan9~1_combout\);

-- Location: LCCOMB_X50_Y72_N28
\vgamap|videoGen|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan9~2_combout\ = (\vgamap|videoSync|pixel_column\(7)) # ((\vgamap|videoGen|LessThan9~0_combout\) # ((\vgamap|videoGen|pixelDraw~29_combout\) # (\vgamap|videoGen|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoGen|LessThan9~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~29_combout\,
	datad => \vgamap|videoGen|LessThan9~1_combout\,
	combout => \vgamap|videoGen|LessThan9~2_combout\);

-- Location: LCCOMB_X46_Y72_N16
\vgamap|videoGen|pixelDraw~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~36_combout\ = (\vgamap|videoGen|pixelDraw~35_combout\ & (\vgamap|videoGen|pixelDraw~33_combout\ & (\vgamap|videoGen|LessThan9~2_combout\ & \vgamap|videoGen|pixelDraw~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~35_combout\,
	datab => \vgamap|videoGen|pixelDraw~33_combout\,
	datac => \vgamap|videoGen|LessThan9~2_combout\,
	datad => \vgamap|videoGen|pixelDraw~17_combout\,
	combout => \vgamap|videoGen|pixelDraw~36_combout\);

-- Location: LCCOMB_X46_Y72_N24
\vgamap|videoGen|colorAddress~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~16_combout\ = (\vgamap|videoGen|pixelDraw~42_combout\) # (\vgamap|videoGen|pixelDraw~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~42_combout\,
	datad => \vgamap|videoGen|pixelDraw~36_combout\,
	combout => \vgamap|videoGen|colorAddress~16_combout\);

-- Location: LCCOMB_X48_Y72_N4
\vgamap|videoGen|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan1~0_combout\ = (\vgamap|videoSync|pixel_column\(3) & ((\vgamap|videoSync|pixel_column\(2)) # (\vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y72_N6
\vgamap|videoGen|pixelDraw~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~12_combout\ = (\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(3) & \vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~12_combout\);

-- Location: LCCOMB_X48_Y72_N20
\vgamap|videoGen|pixelDraw~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~13_combout\ = (\vgamap|videoSync|pixel_column\(6) & (!\vgamap|videoSync|pixel_column\(7) & ((\vgamap|videoSync|pixel_column\(5)) # (\vgamap|videoGen|pixelDraw~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~12_combout\,
	combout => \vgamap|videoGen|pixelDraw~13_combout\);

-- Location: LCCOMB_X48_Y72_N0
\vgamap|videoGen|pixelDraw~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~15_combout\ = (\vgamap|videoGen|pixelDraw~13_combout\) # ((\vgamap|videoGen|pixelDraw~14_combout\ & (\vgamap|videoSync|pixel_column\(7) & !\vgamap|videoGen|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~14_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|LessThan1~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~13_combout\,
	combout => \vgamap|videoGen|pixelDraw~15_combout\);

-- Location: LCCOMB_X49_Y72_N12
\vgamap|videoGen|pixelDraw~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~19_combout\ = (\vgamap|videoSync|pixel_column\(3) & ((\vgamap|videoSync|pixel_column\(2)) # ((\vgamap|videoSync|pixel_column\(0) & \vgamap|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~19_combout\);

-- Location: LCCOMB_X49_Y72_N14
\vgamap|videoGen|pixelDraw~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~18_combout\ = (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(0) & \vgamap|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~18_combout\);

-- Location: LCCOMB_X46_Y72_N0
\vgamap|videoGen|pixelDraw~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~20_combout\ = (\vgamap|videoSync|pixel_column\(4) & (((!\vgamap|videoGen|pixelDraw~19_combout\)) # (!\vgamap|videoSync|pixel_column\(5)))) # (!\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(5)) # 
-- ((\vgamap|videoGen|pixelDraw~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|pixelDraw~19_combout\,
	datad => \vgamap|videoGen|pixelDraw~18_combout\,
	combout => \vgamap|videoGen|pixelDraw~20_combout\);

-- Location: LCCOMB_X46_Y72_N18
\vgamap|videoGen|pixelDraw~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~21_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoGen|pixelDraw~20_combout\ & (\vgamap|videoGen|pixelDraw~8_combout\ & \vgamap|videoGen|pixelDraw~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoGen|pixelDraw~20_combout\,
	datac => \vgamap|videoGen|pixelDraw~8_combout\,
	datad => \vgamap|videoGen|pixelDraw~16_combout\,
	combout => \vgamap|videoGen|pixelDraw~21_combout\);

-- Location: LCCOMB_X46_Y72_N8
\vgamap|videoGen|colorAddress[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~5_combout\ = (!\vgamap|videoGen|pixelDraw~21_combout\ & (((!\vgamap|videoGen|pixelDraw~15_combout\) # (!\vgamap|videoGen|pixelDraw~17_combout\)) # (!\vgamap|videoSync|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(8),
	datab => \vgamap|videoGen|pixelDraw~17_combout\,
	datac => \vgamap|videoGen|pixelDraw~15_combout\,
	datad => \vgamap|videoGen|pixelDraw~21_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~5_combout\);

-- Location: LCCOMB_X49_Y72_N26
\vgamap|videoGen|LessThan12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan12~4_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (((\vgamap|videoGen|LessThan12~3_combout\) # (!\vgamap|videoSync|pixel_column\(5))) # (!\vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan12~3_combout\,
	combout => \vgamap|videoGen|LessThan12~4_combout\);

-- Location: LCCOMB_X45_Y72_N30
\vgamap|videoGen|pixelDraw~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~67_combout\ = (!\vgamap|videoSync|pixel_row\(5) & (\vgamap|videoSync|pixel_row\(7) & (!\vgamap|videoSync|pixel_row\(8) & \vgamap|videoGen|LessThan12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(7),
	datac => \vgamap|videoSync|pixel_row\(8),
	datad => \vgamap|videoGen|LessThan12~4_combout\,
	combout => \vgamap|videoGen|pixelDraw~67_combout\);

-- Location: LCCOMB_X45_Y72_N4
\vgamap|videoGen|pixelDraw~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~65_combout\ = (\vgamap|videoSync|pixel_row\(3) & ((\vgamap|videoSync|pixel_row\(2)) # ((\vgamap|videoSync|pixel_row\(1)) # (\vgamap|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(2),
	datab => \vgamap|videoSync|pixel_row\(1),
	datac => \vgamap|videoSync|pixel_row\(0),
	datad => \vgamap|videoSync|pixel_row\(3),
	combout => \vgamap|videoGen|pixelDraw~65_combout\);

-- Location: LCCOMB_X45_Y72_N14
\vgamap|videoGen|pixelDraw~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~66_combout\ = (\vgamap|videoSync|pixel_row\(4) & (((!\vgamap|videoSync|pixel_row\(2))) # (!\vgamap|videoSync|pixel_row\(3)))) # (!\vgamap|videoSync|pixel_row\(4) & (((\vgamap|videoGen|pixelDraw~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(3),
	datab => \vgamap|videoSync|pixel_row\(4),
	datac => \vgamap|videoSync|pixel_row\(2),
	datad => \vgamap|videoGen|pixelDraw~65_combout\,
	combout => \vgamap|videoGen|pixelDraw~66_combout\);

-- Location: LCCOMB_X45_Y72_N20
\vgamap|videoGen|pixelDraw~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~70_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoSync|pixel_row\(6) & (\vgamap|videoGen|pixelDraw~67_combout\ & \vgamap|videoGen|pixelDraw~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_row\(6),
	datac => \vgamap|videoGen|pixelDraw~67_combout\,
	datad => \vgamap|videoGen|pixelDraw~66_combout\,
	combout => \vgamap|videoGen|pixelDraw~70_combout\);

-- Location: LCCOMB_X45_Y72_N2
\vgamap|videoGen|pixelDraw~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~71_combout\ = (!\vgamap|videoGen|LessThan12~2_combout\ & (!\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(8) & \vgamap|videoGen|pixelDraw~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan12~2_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoGen|pixelDraw~70_combout\,
	combout => \vgamap|videoGen|pixelDraw~71_combout\);

-- Location: LCCOMB_X46_Y72_N28
\vgamap|videoGen|colorAddress~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~17_combout\ = (\vgamap|videoGen|pixelDraw~71_combout\) # ((\vgamap|videoGen|colorAddress[0]~7_combout\ & (!\vgamap|videoGen|colorAddress~16_combout\ & \vgamap|videoGen|colorAddress[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress[0]~7_combout\,
	datab => \vgamap|videoGen|colorAddress~16_combout\,
	datac => \vgamap|videoGen|colorAddress[0]~5_combout\,
	datad => \vgamap|videoGen|pixelDraw~71_combout\,
	combout => \vgamap|videoGen|colorAddress~17_combout\);

-- Location: LCCOMB_X45_Y72_N6
\vgamap|videoGen|colorAddress~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~3_combout\ = (\vgamap|videoGen|colorAddress~2_combout\ & (((!\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoSync|pixel_row\(6))) # (!\vgamap|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(7),
	datac => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoGen|colorAddress~2_combout\,
	combout => \vgamap|videoGen|colorAddress~3_combout\);

-- Location: LCCOMB_X47_Y72_N28
\vgamap|videoGen|pixelDraw~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~9_combout\ = (!\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(4)) # (\vgamap|videoGen|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan1~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~9_combout\);

-- Location: LCCOMB_X49_Y72_N8
\vgamap|videoGen|pixelDraw~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~11_combout\ = ((!\vgamap|videoSync|pixel_column\(4) & (!\vgamap|videoSync|pixel_column\(3) & !\vgamap|videoGen|pixelDraw~10_combout\))) # (!\vgamap|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(3),
	datad => \vgamap|videoGen|pixelDraw~10_combout\,
	combout => \vgamap|videoGen|pixelDraw~11_combout\);

-- Location: LCCOMB_X46_Y72_N14
\vgamap|videoGen|colorAddress~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~4_combout\ = (\vgamap|videoGen|colorAddress~3_combout\ & ((\vgamap|videoGen|pixelDraw~9_combout\) # ((\vgamap|videoGen|pixelDraw~11_combout\ & \vgamap|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress~3_combout\,
	datab => \vgamap|videoGen|pixelDraw~9_combout\,
	datac => \vgamap|videoGen|pixelDraw~11_combout\,
	datad => \vgamap|videoSync|pixel_column\(6),
	combout => \vgamap|videoGen|colorAddress~4_combout\);

-- Location: LCCOMB_X45_Y72_N22
\vgamap|videoGen|LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan19~0_combout\ = ((!\vgamap|videoSync|pixel_row\(5) & !\vgamap|videoSync|pixel_row\(6))) # (!\vgamap|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_row\(5),
	datab => \vgamap|videoSync|pixel_row\(6),
	datad => \vgamap|videoSync|pixel_row\(7),
	combout => \vgamap|videoGen|LessThan19~0_combout\);

-- Location: LCCOMB_X45_Y72_N0
\vgamap|videoGen|pixelDraw~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~47_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|LessThan19~0_combout\ & (!\vgamap|videoSync|pixel_column\(8) & \vgamap|videoGen|colorAddress~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|LessThan19~0_combout\,
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoGen|colorAddress~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~47_combout\);

-- Location: LCCOMB_X47_Y72_N20
\vgamap|videoGen|pixelDraw~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~43_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|pixelDraw~26_combout\ & (\vgamap|videoGen|LessThan19~0_combout\ & \vgamap|videoGen|colorAddress~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|pixelDraw~26_combout\,
	datac => \vgamap|videoGen|LessThan19~0_combout\,
	datad => \vgamap|videoGen|colorAddress~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~43_combout\);

-- Location: LCCOMB_X48_Y72_N12
\vgamap|videoGen|pixelDraw~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~44_combout\ = (\vgamap|videoSync|pixel_column\(1)) # ((\vgamap|videoSync|pixel_column\(0) & \vgamap|videoSync|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|pixelDraw~44_combout\);

-- Location: LCCOMB_X48_Y72_N22
\vgamap|videoGen|pixelDraw~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~45_combout\ = (\vgamap|videoSync|pixel_column\(3) & ((\vgamap|videoSync|pixel_column\(4)) # ((\vgamap|videoSync|pixel_column\(2) & \vgamap|videoGen|pixelDraw~44_combout\)))) # (!\vgamap|videoSync|pixel_column\(3) & 
-- (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoSync|pixel_column\(4) & \vgamap|videoGen|pixelDraw~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoGen|pixelDraw~44_combout\,
	combout => \vgamap|videoGen|pixelDraw~45_combout\);

-- Location: LCCOMB_X47_Y72_N26
\vgamap|videoGen|pixelDraw~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~46_combout\ = (\vgamap|videoSync|pixel_column\(6) & (((!\vgamap|videoGen|pixelDraw~45_combout\ & !\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5)))) # (!\vgamap|videoSync|pixel_column\(6) & 
-- (\vgamap|videoSync|pixel_column\(5) & (\vgamap|videoGen|pixelDraw~45_combout\ & \vgamap|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|pixelDraw~45_combout\,
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~46_combout\);

-- Location: LCCOMB_X47_Y72_N16
\vgamap|videoGen|pixelDraw~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~48_combout\ = (\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoGen|LessThan12~2_combout\ & !\vgamap|videoGen|pixelDraw~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoGen|LessThan12~2_combout\,
	datad => \vgamap|videoGen|pixelDraw~10_combout\,
	combout => \vgamap|videoGen|pixelDraw~48_combout\);

-- Location: LCCOMB_X47_Y72_N18
\vgamap|videoGen|pixelDraw~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~49_combout\ = (\vgamap|videoGen|pixelDraw~48_combout\) # ((\vgamap|videoGen|LessThan1~0_combout\ & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|LessThan1~0_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|LessThan9~1_combout\,
	datad => \vgamap|videoGen|pixelDraw~48_combout\,
	combout => \vgamap|videoGen|pixelDraw~49_combout\);

-- Location: LCCOMB_X47_Y72_N12
\vgamap|videoGen|pixelDraw~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~50_combout\ = (\vgamap|videoGen|pixelDraw~49_combout\) # ((\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoGen|pixelDraw~14_combout\)) # (!\vgamap|videoSync|pixel_column\(7) & ((\vgamap|videoGen|pixelDraw~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~14_combout\,
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoGen|pixelDraw~29_combout\,
	datad => \vgamap|videoGen|pixelDraw~49_combout\,
	combout => \vgamap|videoGen|pixelDraw~50_combout\);

-- Location: LCCOMB_X47_Y72_N10
\vgamap|videoGen|colorAddress[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~9_combout\ = (\vgamap|videoGen|pixelDraw~47_combout\ & (!\vgamap|videoGen|pixelDraw~50_combout\ & ((!\vgamap|videoGen|pixelDraw~46_combout\) # (!\vgamap|videoGen|pixelDraw~43_combout\)))) # 
-- (!\vgamap|videoGen|pixelDraw~47_combout\ & (((!\vgamap|videoGen|pixelDraw~46_combout\)) # (!\vgamap|videoGen|pixelDraw~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~47_combout\,
	datab => \vgamap|videoGen|pixelDraw~43_combout\,
	datac => \vgamap|videoGen|pixelDraw~46_combout\,
	datad => \vgamap|videoGen|pixelDraw~50_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~9_combout\);

-- Location: LCCOMB_X46_Y72_N4
\vgamap|videoGen|colorAddress[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~8_combout\ = (!\vgamap|videoGen|pixelDraw~42_combout\ & (!\vgamap|videoGen|pixelDraw~36_combout\ & (\vgamap|videoGen|colorAddress[0]~5_combout\ & \vgamap|videoGen|colorAddress[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~42_combout\,
	datab => \vgamap|videoGen|pixelDraw~36_combout\,
	datac => \vgamap|videoGen|colorAddress[0]~5_combout\,
	datad => \vgamap|videoGen|colorAddress[0]~7_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~8_combout\);

-- Location: LCCOMB_X47_Y72_N22
\vgamap|videoGen|pixelDraw~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~60_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (((!\vgamap|videoGen|LessThan9~1_combout\) # (!\vgamap|videoGen|pixelDraw~26_combout\)) # (!\vgamap|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoGen|pixelDraw~26_combout\,
	datad => \vgamap|videoGen|LessThan9~1_combout\,
	combout => \vgamap|videoGen|pixelDraw~60_combout\);

-- Location: LCCOMB_X49_Y72_N28
\vgamap|videoGen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan0~0_combout\ = (!\vgamap|videoSync|pixel_column\(3) & (((!\vgamap|videoSync|pixel_column\(1)) # (!\vgamap|videoSync|pixel_column\(0))) # (!\vgamap|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(2),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(0),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y71_N12
\vgamap|videoGen|pixelDraw~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~61_combout\ = ((\vgamap|videoSync|pixel_column\(6)) # ((\vgamap|videoSync|pixel_column\(5) & \vgamap|videoSync|pixel_column\(4)))) # (!\vgamap|videoGen|pixelDraw~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoGen|pixelDraw~33_combout\,
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoSync|pixel_column\(4),
	combout => \vgamap|videoGen|pixelDraw~61_combout\);

-- Location: LCCOMB_X47_Y71_N28
\vgamap|videoGen|pixelDraw~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~62_combout\ = (\vgamap|videoSync|pixel_column\(9) & ((\vgamap|videoGen|pixelDraw~61_combout\) # ((\vgamap|videoSync|pixel_column\(5) & !\vgamap|videoGen|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(5),
	datab => \vgamap|videoSync|pixel_column\(9),
	datac => \vgamap|videoGen|LessThan0~0_combout\,
	datad => \vgamap|videoGen|pixelDraw~61_combout\,
	combout => \vgamap|videoGen|pixelDraw~62_combout\);

-- Location: LCCOMB_X48_Y72_N10
\vgamap|videoGen|pixelDraw~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~63_combout\ = ((!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoGen|LessThan0~0_combout\) # (!\vgamap|videoSync|pixel_column\(4))))) # (!\vgamap|videoSync|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan0~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~63_combout\);

-- Location: LCCOMB_X47_Y71_N0
\vgamap|videoGen|pixelDraw~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~69_combout\ = (!\vgamap|videoSync|pixel_column\(7) & (!\vgamap|videoSync|pixel_column\(8) & ((\vgamap|videoSync|pixel_column\(9)) # (!\vgamap|videoGen|LessThan12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(7),
	datab => \vgamap|videoSync|pixel_column\(8),
	datac => \vgamap|videoSync|pixel_column\(9),
	datad => \vgamap|videoGen|LessThan12~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~69_combout\);

-- Location: LCCOMB_X47_Y72_N0
\vgamap|videoGen|pixelDraw~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~64_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|pixelDraw~63_combout\ & (\vgamap|videoGen|colorAddress~3_combout\ & \vgamap|videoGen|pixelDraw~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|pixelDraw~63_combout\,
	datac => \vgamap|videoGen|colorAddress~3_combout\,
	datad => \vgamap|videoGen|pixelDraw~69_combout\,
	combout => \vgamap|videoGen|pixelDraw~64_combout\);

-- Location: LCCOMB_X47_Y72_N30
\vgamap|videoGen|colorAddress[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~13_combout\ = (!\vgamap|videoGen|pixelDraw~64_combout\ & ((\vgamap|videoGen|pixelDraw~60_combout\) # ((\vgamap|videoGen|pixelDraw~62_combout\) # (!\vgamap|videoGen|colorAddress~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~60_combout\,
	datab => \vgamap|videoGen|colorAddress~3_combout\,
	datac => \vgamap|videoGen|pixelDraw~62_combout\,
	datad => \vgamap|videoGen|pixelDraw~64_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~13_combout\);

-- Location: LCCOMB_X49_Y72_N18
\vgamap|videoGen|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan5~0_combout\ = (\vgamap|videoSync|pixel_column\(4)) # ((\vgamap|videoSync|pixel_column\(5)) # ((\vgamap|videoSync|pixel_column\(3) & \vgamap|videoGen|pixelDraw~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(3),
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|pixelDraw~39_combout\,
	combout => \vgamap|videoGen|LessThan5~0_combout\);

-- Location: LCCOMB_X49_Y72_N0
\vgamap|videoGen|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan5~1_combout\ = (\vgamap|videoSync|pixel_column\(8)) # ((\vgamap|videoSync|pixel_column\(6) & (\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(7),
	datac => \vgamap|videoSync|pixel_column\(8),
	datad => \vgamap|videoGen|LessThan5~0_combout\,
	combout => \vgamap|videoGen|LessThan5~1_combout\);

-- Location: LCCOMB_X47_Y72_N4
\vgamap|videoGen|colorAddress[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~10_combout\ = (\vgamap|videoGen|pixelDraw~47_combout\ & (!\vgamap|videoGen|LessThan5~1_combout\ & ((!\vgamap|videoGen|pixelDraw~43_combout\) # (!\vgamap|videoGen|LessThan12~4_combout\)))) # 
-- (!\vgamap|videoGen|pixelDraw~47_combout\ & (((!\vgamap|videoGen|pixelDraw~43_combout\)) # (!\vgamap|videoGen|LessThan12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~47_combout\,
	datab => \vgamap|videoGen|LessThan12~4_combout\,
	datac => \vgamap|videoGen|LessThan5~1_combout\,
	datad => \vgamap|videoGen|pixelDraw~43_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~10_combout\);

-- Location: LCCOMB_X50_Y72_N6
\vgamap|videoGen|pixelDraw~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~57_combout\ = (\vgamap|videoSync|pixel_column\(5) & (!\vgamap|videoSync|pixel_column\(4))) # (!\vgamap|videoSync|pixel_column\(5) & ((\vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(4),
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~57_combout\);

-- Location: LCCOMB_X50_Y72_N12
\vgamap|videoGen|pixelDraw~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~58_combout\ = (!\vgamap|videoSync|pixel_column\(6) & ((\vgamap|videoGen|pixelDraw~57_combout\) # ((!\vgamap|videoGen|pixelDraw~18_combout\ & \vgamap|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~18_combout\,
	datab => \vgamap|videoSync|pixel_column\(4),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|pixelDraw~57_combout\,
	combout => \vgamap|videoGen|pixelDraw~58_combout\);

-- Location: LCCOMB_X50_Y72_N10
\vgamap|videoGen|pixelDraw~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~68_combout\ = (\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(2) & (\vgamap|videoGen|pixelDraw~29_combout\ & \vgamap|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoGen|pixelDraw~29_combout\,
	datad => \vgamap|videoSync|pixel_column\(3),
	combout => \vgamap|videoGen|pixelDraw~68_combout\);

-- Location: LCCOMB_X50_Y72_N26
\vgamap|videoGen|pixelDraw~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~59_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|LessThan19~0_combout\ & (\vgamap|videoGen|pixelDraw~37_combout\ & \vgamap|videoGen|colorAddress~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|LessThan19~0_combout\,
	datac => \vgamap|videoGen|pixelDraw~37_combout\,
	datad => \vgamap|videoGen|colorAddress~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~59_combout\);

-- Location: LCCOMB_X50_Y72_N20
\vgamap|videoGen|pixelDraw~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~56_combout\ = (\vgamap|videoGen|LessThan9~2_combout\ & (((!\vgamap|videoSync|pixel_column\(5)) # (!\vgamap|videoGen|pixelDraw~28_combout\)) # (!\vgamap|videoGen|pixelDraw~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~10_combout\,
	datab => \vgamap|videoGen|pixelDraw~28_combout\,
	datac => \vgamap|videoSync|pixel_column\(5),
	datad => \vgamap|videoGen|LessThan9~2_combout\,
	combout => \vgamap|videoGen|pixelDraw~56_combout\);

-- Location: LCCOMB_X50_Y72_N8
\vgamap|videoGen|colorAddress[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~12_combout\ = ((!\vgamap|videoGen|pixelDraw~58_combout\ & (!\vgamap|videoGen|pixelDraw~68_combout\ & !\vgamap|videoGen|pixelDraw~56_combout\))) # (!\vgamap|videoGen|pixelDraw~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~58_combout\,
	datab => \vgamap|videoGen|pixelDraw~68_combout\,
	datac => \vgamap|videoGen|pixelDraw~59_combout\,
	datad => \vgamap|videoGen|pixelDraw~56_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~12_combout\);

-- Location: LCCOMB_X48_Y72_N18
\vgamap|videoGen|pixelDraw~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~51_combout\ = (\vgamap|videoSync|pixel_column\(2)) # ((!\vgamap|videoSync|pixel_column\(4) & (\vgamap|videoSync|pixel_column\(1) & \vgamap|videoSync|pixel_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(2),
	datac => \vgamap|videoSync|pixel_column\(1),
	datad => \vgamap|videoSync|pixel_column\(0),
	combout => \vgamap|videoGen|pixelDraw~51_combout\);

-- Location: LCCOMB_X48_Y72_N24
\vgamap|videoGen|pixelDraw~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~52_combout\ = (\vgamap|videoSync|pixel_column\(4) & ((\vgamap|videoSync|pixel_column\(3)) # ((\vgamap|videoSync|pixel_column\(6)) # (\vgamap|videoGen|pixelDraw~51_combout\)))) # (!\vgamap|videoSync|pixel_column\(4) & 
-- (\vgamap|videoSync|pixel_column\(3) & (\vgamap|videoSync|pixel_column\(6) & \vgamap|videoGen|pixelDraw~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(4),
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(6),
	datad => \vgamap|videoGen|pixelDraw~51_combout\,
	combout => \vgamap|videoGen|pixelDraw~52_combout\);

-- Location: LCCOMB_X48_Y72_N26
\vgamap|videoGen|pixelDraw~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~53_combout\ = (\vgamap|videoSync|pixel_column\(7) & (\vgamap|videoSync|pixel_column\(6) $ (((\vgamap|videoSync|pixel_column\(5)) # (\vgamap|videoGen|pixelDraw~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(6),
	datab => \vgamap|videoSync|pixel_column\(5),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|pixelDraw~52_combout\,
	combout => \vgamap|videoGen|pixelDraw~53_combout\);

-- Location: LCCOMB_X49_Y72_N2
\vgamap|videoGen|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|LessThan6~0_combout\ = ((!\vgamap|videoSync|pixel_column\(0) & !\vgamap|videoSync|pixel_column\(1))) # (!\vgamap|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|pixel_column\(0),
	datac => \vgamap|videoSync|pixel_column\(2),
	datad => \vgamap|videoSync|pixel_column\(1),
	combout => \vgamap|videoGen|LessThan6~0_combout\);

-- Location: LCCOMB_X48_Y72_N28
\vgamap|videoGen|pixelDraw~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~54_combout\ = (\vgamap|videoGen|pixelDraw~14_combout\ & (!\vgamap|videoSync|pixel_column\(3) & (!\vgamap|videoSync|pixel_column\(7) & \vgamap|videoGen|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~14_combout\,
	datab => \vgamap|videoSync|pixel_column\(3),
	datac => \vgamap|videoSync|pixel_column\(7),
	datad => \vgamap|videoGen|LessThan6~0_combout\,
	combout => \vgamap|videoGen|pixelDraw~54_combout\);

-- Location: LCCOMB_X48_Y72_N2
\vgamap|videoGen|pixelDraw~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|pixelDraw~55_combout\ = (!\vgamap|videoSync|pixel_column\(9) & (\vgamap|videoGen|pixelDraw~54_combout\ & (\vgamap|videoGen|LessThan5~1_combout\ & \vgamap|videoGen|colorAddress~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|pixel_column\(9),
	datab => \vgamap|videoGen|pixelDraw~54_combout\,
	datac => \vgamap|videoGen|LessThan5~1_combout\,
	datad => \vgamap|videoGen|colorAddress~3_combout\,
	combout => \vgamap|videoGen|pixelDraw~55_combout\);

-- Location: LCCOMB_X48_Y72_N16
\vgamap|videoGen|colorAddress[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~11_combout\ = (!\vgamap|videoGen|pixelDraw~55_combout\ & ((!\vgamap|videoGen|pixelDraw~53_combout\) # (!\vgamap|videoGen|pixelDraw~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~47_combout\,
	datac => \vgamap|videoGen|pixelDraw~53_combout\,
	datad => \vgamap|videoGen|pixelDraw~55_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~11_combout\);

-- Location: LCCOMB_X47_Y72_N24
\vgamap|videoGen|colorAddress[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~14_combout\ = (\vgamap|videoGen|colorAddress[0]~13_combout\ & (\vgamap|videoGen|colorAddress[0]~10_combout\ & (\vgamap|videoGen|colorAddress[0]~12_combout\ & \vgamap|videoGen|colorAddress[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|colorAddress[0]~13_combout\,
	datab => \vgamap|videoGen|colorAddress[0]~10_combout\,
	datac => \vgamap|videoGen|colorAddress[0]~12_combout\,
	datad => \vgamap|videoGen|colorAddress[0]~11_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~14_combout\);

-- Location: LCCOMB_X46_Y72_N2
\vgamap|videoGen|colorAddress[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[0]~15_combout\ = (!\vgamap|videoGen|pixelDraw~71_combout\ & (\vgamap|videoGen|colorAddress[0]~9_combout\ & (\vgamap|videoGen|colorAddress[0]~8_combout\ & \vgamap|videoGen|colorAddress[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~71_combout\,
	datab => \vgamap|videoGen|colorAddress[0]~9_combout\,
	datac => \vgamap|videoGen|colorAddress[0]~8_combout\,
	datad => \vgamap|videoGen|colorAddress[0]~14_combout\,
	combout => \vgamap|videoGen|colorAddress[0]~15_combout\);

-- Location: LCCOMB_X46_Y72_N26
\vgamap|videoGen|colorAddress~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress~18_combout\ = (\vgamap|videoGen|colorAddress[0]~15_combout\ & (\vgamap|videoGen|pixelDraw~8_combout\ & ((\vgamap|videoGen|colorAddress~4_combout\)))) # (!\vgamap|videoGen|colorAddress[0]~15_combout\ & 
-- (((\vgamap|videoGen|colorAddress~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoGen|pixelDraw~8_combout\,
	datab => \vgamap|videoGen|colorAddress~17_combout\,
	datac => \vgamap|videoGen|colorAddress~4_combout\,
	datad => \vgamap|videoGen|colorAddress[0]~15_combout\,
	combout => \vgamap|videoGen|colorAddress~18_combout\);

-- Location: FF_X46_Y72_N25
\vgamap|videoGen|colorAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \vgamap|videoGen|colorAddress~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(0));

-- Location: LCCOMB_X46_Y72_N10
\vgamap|videoGen|colorAddress[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoGen|colorAddress[1]~19_combout\ = !\vgamap|videoGen|colorAddress~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoGen|colorAddress~18_combout\,
	combout => \vgamap|videoGen|colorAddress[1]~19_combout\);

-- Location: FF_X46_Y72_N11
\vgamap|videoGen|colorAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vgamap|videoGen|colorAddress[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(1));

-- Location: FF_X46_Y72_N21
\vgamap|videoGen|colorAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \vgamap|videoGen|colorAddress~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoGen|colorAddress\(2));

-- Location: M9K_X51_Y72_N0
\vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"03FFFFFFF0000000000000FFFFF03FF003FF03FFFFC000000003FF0000FFC0003FF00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "colorROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vgamap|pixelGenerator:videoGen|colorROM:colors|altsyncram:altsyncram_component|altsyncram_b481:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 30,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	portaaddr => \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vgamap|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X49_Y71_N12
\vgamap|videoSync|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~2_combout\ = (\vgamap|videoSync|h_count\(5) & ((\vgamap|videoSync|h_count\(0)) # ((\vgamap|videoSync|h_count\(2)) # (\vgamap|videoSync|h_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(0),
	datab => \vgamap|videoSync|h_count\(5),
	datac => \vgamap|videoSync|h_count\(2),
	datad => \vgamap|videoSync|h_count\(1),
	combout => \vgamap|videoSync|process_1~2_combout\);

-- Location: LCCOMB_X49_Y71_N18
\vgamap|videoSync|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~1_combout\ = ((\vgamap|videoSync|h_count\(8)) # ((\vgamap|videoSync|process_1~0_combout\) # (!\vgamap|videoSync|h_count\(7)))) # (!\vgamap|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|h_count\(9),
	datab => \vgamap|videoSync|h_count\(8),
	datac => \vgamap|videoSync|h_count\(7),
	datad => \vgamap|videoSync|process_1~0_combout\,
	combout => \vgamap|videoSync|process_1~1_combout\);

-- Location: LCCOMB_X49_Y71_N4
\vgamap|videoSync|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~4_combout\ = (\vgamap|videoSync|process_1~1_combout\) # ((\vgamap|videoSync|process_1~2_combout\ & (\vgamap|videoSync|h_count\(6) & \vgamap|videoSync|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~2_combout\,
	datab => \vgamap|videoSync|h_count\(6),
	datac => \vgamap|videoSync|process_1~3_combout\,
	datad => \vgamap|videoSync|process_1~1_combout\,
	combout => \vgamap|videoSync|process_1~4_combout\);

-- Location: FF_X49_Y71_N5
\vgamap|videoSync|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|horiz_sync~q\);

-- Location: LCCOMB_X41_Y71_N4
\vgamap|videoSync|horiz_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|horiz_sync_out~feeder_combout\ = \vgamap|videoSync|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vgamap|videoSync|horiz_sync~q\,
	combout => \vgamap|videoSync|horiz_sync_out~feeder_combout\);

-- Location: FF_X41_Y71_N5
\vgamap|videoSync|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|horiz_sync_out~q\);

-- Location: LCCOMB_X46_Y71_N12
\vgamap|videoSync|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~5_combout\ = ((\vgamap|videoSync|v_count\(1) & ((\vgamap|videoSync|v_count\(2)) # (!\vgamap|videoSync|v_count\(0)))) # (!\vgamap|videoSync|v_count\(1) & (!\vgamap|videoSync|v_count\(2)))) # (!\vgamap|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|v_count\(1),
	datab => \vgamap|videoSync|v_count\(2),
	datac => \vgamap|videoSync|v_count\(3),
	datad => \vgamap|videoSync|v_count\(0),
	combout => \vgamap|videoSync|process_1~5_combout\);

-- Location: LCCOMB_X46_Y71_N10
\vgamap|videoSync|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|process_1~6_combout\ = (\vgamap|videoSync|process_1~5_combout\) # ((\vgamap|videoSync|v_count\(4)) # ((\vgamap|videoSync|v_count\(9)) # (!\vgamap|videoSync|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgamap|videoSync|process_1~5_combout\,
	datab => \vgamap|videoSync|v_count\(4),
	datac => \vgamap|videoSync|LessThan6~0_combout\,
	datad => \vgamap|videoSync|v_count\(9),
	combout => \vgamap|videoSync|process_1~6_combout\);

-- Location: FF_X46_Y71_N11
\vgamap|videoSync|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|process_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|vert_sync~q\);

-- Location: LCCOMB_X54_Y71_N4
\vgamap|videoSync|vert_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|vert_sync_out~feeder_combout\ = \vgamap|videoSync|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vgamap|videoSync|vert_sync~q\,
	combout => \vgamap|videoSync|vert_sync_out~feeder_combout\);

-- Location: FF_X54_Y71_N5
\vgamap|videoSync|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|vert_sync_out~q\);

-- Location: FF_X46_Y71_N1
\vgamap|videoSync|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	d => \vgamap|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|video_on_v~q\);

-- Location: FF_X45_Y71_N1
\vgamap|videoSync|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vgamap|videoSync|pixel_clock_int~clkctrl_outclk\,
	asdata => \vgamap|videoSync|LessThan5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vgamap|videoSync|video_on_h~q\);

-- Location: LCCOMB_X45_Y71_N0
\vgamap|videoSync|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgamap|videoSync|video_on~combout\ = (\vgamap|videoSync|video_on_v~q\ & \vgamap|videoSync|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vgamap|videoSync|video_on_v~q\,
	datac => \vgamap|videoSync|video_on_h~q\,
	combout => \vgamap|videoSync|video_on~combout\);

-- Location: IOIBUF_X56_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\keys[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(4),
	o => \keys[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\keys[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(5),
	o => \keys[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\keys[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(6),
	o => \keys[6]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\keys[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(7),
	o => \keys[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\keys[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(8),
	o => \keys[8]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\keys[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(9),
	o => \keys[9]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\keys[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(10),
	o => \keys[10]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\keys[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(11),
	o => \keys[11]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\keys[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(12),
	o => \keys[12]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\keys[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(13),
	o => \keys[13]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\keys[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(14),
	o => \keys[14]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\keys[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(15),
	o => \keys[15]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\keys[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(16),
	o => \keys[16]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\vol_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vol_sel,
	o => \vol_sel~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\oct_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oct_sel,
	o => \oct_sel~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\synth_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synth_sel,
	o => \synth_sel~input_o\);

ww_vga_red(0) <= \vga_red[0]~output_o\;

ww_vga_red(1) <= \vga_red[1]~output_o\;

ww_vga_red(2) <= \vga_red[2]~output_o\;

ww_vga_red(3) <= \vga_red[3]~output_o\;

ww_vga_red(4) <= \vga_red[4]~output_o\;

ww_vga_red(5) <= \vga_red[5]~output_o\;

ww_vga_red(6) <= \vga_red[6]~output_o\;

ww_vga_red(7) <= \vga_red[7]~output_o\;

ww_vga_red(8) <= \vga_red[8]~output_o\;

ww_vga_red(9) <= \vga_red[9]~output_o\;

ww_vga_green(0) <= \vga_green[0]~output_o\;

ww_vga_green(1) <= \vga_green[1]~output_o\;

ww_vga_green(2) <= \vga_green[2]~output_o\;

ww_vga_green(3) <= \vga_green[3]~output_o\;

ww_vga_green(4) <= \vga_green[4]~output_o\;

ww_vga_green(5) <= \vga_green[5]~output_o\;

ww_vga_green(6) <= \vga_green[6]~output_o\;

ww_vga_green(7) <= \vga_green[7]~output_o\;

ww_vga_green(8) <= \vga_green[8]~output_o\;

ww_vga_green(9) <= \vga_green[9]~output_o\;

ww_vga_blue(0) <= \vga_blue[0]~output_o\;

ww_vga_blue(1) <= \vga_blue[1]~output_o\;

ww_vga_blue(2) <= \vga_blue[2]~output_o\;

ww_vga_blue(3) <= \vga_blue[3]~output_o\;

ww_vga_blue(4) <= \vga_blue[4]~output_o\;

ww_vga_blue(5) <= \vga_blue[5]~output_o\;

ww_vga_blue(6) <= \vga_blue[6]~output_o\;

ww_vga_blue(7) <= \vga_blue[7]~output_o\;

ww_vga_blue(8) <= \vga_blue[8]~output_o\;

ww_vga_blue(9) <= \vga_blue[9]~output_o\;

ww_horiz_sync <= \horiz_sync~output_o\;

ww_vert_sync <= \vert_sync~output_o\;

ww_vga_blank <= \vga_blank~output_o\;

ww_vga_clk <= \vga_clk~output_o\;
END structure;


