--
-- JSInth.vhd
-- top-level entity
--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY JSInth IS
	PORT(
		--Inputs
		
		reset		: in std_logic; --N/A
		clk		: in std_logic;
		keys		: in std_logic_vector(16 downto 0);
		vol_up	: in std_logic;
		vol_down	: in std_logic;
		oct_sel	: in std_logic;
		synth_sel: in std_logic;
		mute_sel	: in std_logic;
		
		--VGA
		
		vga_red, vga_green, vga_blue					: out std_logic_vector(9 downto 0);
		horiz_sync, vert_sync, vga_blank, vga_clk	: out std_logic;
		
		-- I2C bus
    
		I2C_SDAT : inout std_logic; -- I2C Data
		I2C_SCLK : out std_logic;   -- I2C Clock
    
		-- Audio CODEC
		
		AUD_ADCLRCK : inout std_logic;                      -- ADC LR Clock
		AUD_ADCDAT 	: in std_logic;                         -- ADC Data
		AUD_DACLRCK : inout std_logic;                      -- DAC LR Clock
		AUD_DACDAT 	: out std_logic;                        -- DAC Data
		AUD_BCLK 	: inout std_logic;                      -- Bit-Stream Clock
		AUD_XCK 		: out std_logic                         -- Chip Clock 
	);
END ENTITY JSInth;

ARCHITECTURE main OF JSInth IS
COMPONENT VGA_top_level IS
	PORT(
		CLOCK_50: in std_logic;
		RESET_N: in std_logic;
		VGA_RED, VGA_GREEN, VGA_BLUE: out std_logic_vector(9 downto 0);
		HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK: out std_logic;
		--main inputs
		keys_vga: in std_logic_vector(16 downto 0);
		vol_vga: in std_logic_vector(2 downto 0);
		oct_sel_vga: in std_logic_vector(1 downto 0);
		synth_sel_vga: in std_logic_vector(1 downto 0);
		mute_sel_vga: in std_logic
	);
END COMPONENT VGA_top_level;

COMPONENT FSM_volume IS
	PORT(
		up, down: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(2 downto 0)
	);
END COMPONENT FSM_volume;

COMPONENT FSM_octave IS
	PORT(
		button: in std_logic;
		clk: in std_logic;
		z: out std_logic_vector(1 downto 0)
	);
END COMPONENT FSM_octave;

component de2_wm8731_audio is
   port (
    clk : in std_logic;                 --    Audio CODEC Chip Clock AUD_XCK
    reset_n : in std_logic;
    test_mode : in std_logic;           --    Audio CODEC controller test mode
    audio_request : out std_logic;      --    Audio controller request new data
    data_in: in unsigned (15 downto 0);
  
    -- Audio interface signals
    AUD_ADCLRCK  : out std_logic;       --    Audio CODEC ADC LR Clock
    AUD_ADCDAT   : in  std_logic;       --    Audio CODEC ADC Data
    AUD_DACLRCK  : out std_logic;       --    Audio CODEC DAC LR Clock
    AUD_DACDAT   : out std_logic;       --    Audio CODEC DAC Data
    AUD_BCLK     : inout std_logic      --    Audio CODEC Bit-Stream Clock
  );
 end component de2_wm8731_audio;
 
component de2_i2c_av_config is
  port (
    iCLK : in std_logic;
    iRST_N : in std_logic;
    I2C_SCLK : out std_logic;
    I2C_SDAT : inout std_logic
  );
end component de2_i2c_av_config;

SIGNAL current_volume: std_logic_vector (2 downto 0);
SIGNAL current_octave: std_logic_vector (1 downto 0);
SIGNAL current_synth: std_logic_vector(1 downto 0);
SIGNAL audio_clock: unsigned (1 downto 0) := "00";
SIGNAL audio_request: std_logic;
SIGNAL data_in: unsigned (15 downto 0);
SIGNAL data_counter: unsigned (6 downto 0) := "0000000";

BEGIN

CLK_DIV_AUD: PROCESS (clk) IS
BEGIN
	IF (rising_edge(clk)) THEN
		audio_clock <= audio_clock + "1";
	END IF;
END PROCESS CLK_DIV_AUD;

CLK_DIV_DATA: PROCESS (audio_clock) IS
BEGIN
	IF rising_edge(audio_clock(1)) THEN
		IF audio_request = '1' THEN
			IF data_counter = "1101101" THEN
            			data_counter <= "0000000";
         		ELSE  
            			data_counter <= data_counter + 1;
          		END IF;
		END IF;
	END IF;
END PROCESS CLK_DIV_DATA;

AUD_XCK <= audio_clock(1);

--i2c : de2_i2c_av_config port map (
--    iCLK     => clk,
--    iRST_n   => '1',
--    I2C_SCLK => I2C_SCLK,
--    I2C_SDAT => I2C_SDAT
--  );

audiomap: de2_wm8731_audio port map (
    clk => audio_clock(1),
    reset_n => '1',
    test_mode => '0',                   -- Output a sine wave
    audio_request => audio_request,
    data_in => data_in,
  
    -- Audio interface signals
    AUD_ADCLRCK  => AUD_ADCLRCK,
    AUD_ADCDAT   => AUD_ADCDAT,
    AUD_DACLRCK  => AUD_DACLRCK,
    AUD_DACDAT   => AUD_DACDAT,
    AUD_BCLK     => AUD_BCLK
  );
 
--map FSMs
volmap: FSM_volume port map(vol_up, vol_down, clk, current_volume);
octmap: FSM_octave port map(oct_sel, clk, current_octave);
synmap: FSM_octave port map(synth_sel, clk, current_synth);
--map VGA monitor
vgamap: VGA_top_level port map(clk, reset, vga_red, vga_green, vga_blue, horiz_sync, vert_sync, vga_blank, vga_clk, keys, current_volume, current_octave, current_synth, mute_sel);

with data_counter select data_in <=
	X"0000" when "0000000",
	X"074E" when "0000001",
	X"0E97" when "0000010",
	X"15D3" when "0000011",
	X"1CFD" when "0000100",
	X"240F" when "0000101",
	X"2B03" when "0000110",
	X"31D3" when "0000111",
	X"3879" when "0001000",
	X"3EF0" when "0001001",
	X"4533" when "0001010",
	X"4B3B" when "0001011",
	X"5105" when "0001100",
	X"568C" when "0001101",
	X"5BCA" when "0001110",
	X"60BB" when "0001111",
	X"655C" when "0010000",
	X"69A8" when "0010001",
	X"6D9B" when "0010010",
	X"7134" when "0010011",
	X"746D" when "0010100",
	X"7746" when "0010101",
	X"79BB" when "0010110",
	X"7BCA" when "0010111",
	X"7D72" when "0011000",
	X"7EB1" when "0011001",
	X"7F86" when "0011010",
	X"7FF1" when "0011011",
	X"7FF1" when "0011100",
	X"7F86" when "0011101",
	X"7EB1" when "0011110",
	X"7D72" when "0011111",
	X"7BCA" when "0100000",
	X"79BB" when "0100001",
	X"7746" when "0100010",
	X"746D" when "0100011",
	X"7134" when "0100100",
	X"6D9B" when "0100101",
	X"69A8" when "0100110",
	X"655C" when "0100111",
	X"60BB" when "0101000",
	X"5BCA" when "0101001",
	X"568C" when "0101010",
	X"5105" when "0101011",
	X"4B3B" when "0101100",
	X"4533" when "0101101",
	X"3EF0" when "0101110",
	X"3879" when "0101111",
	X"31D3" when "0110000",
	X"2B03" when "0110001",
	X"240F" when "0110010",
	X"1CFD" when "0110011",
	X"15D3" when "0110100",
	X"0E97" when "0110101",
	X"074E" when "0110110",
	X"0000" when "0110111",
	X"F8AF" when "0111000",
	X"F166" when "0111001",
	X"EA2A" when "0111010",
	X"E300" when "0111011",
	X"DBEE" when "0111100",
	X"D4FA" when "0111101",
	X"CE2A" when "0111110",
	X"C784" when "0111111",
	X"C10D" when "1000000",
	X"BACA" when "1000001",
	X"B4C2" when "1000010",
	X"AEF8" when "1000011",
	X"A971" when "1000100",
	X"A433" when "1000101",
	X"9F42" when "1000110",
	X"9AA1" when "1000111",
	X"9655" when "1001000",
	X"9262" when "1001001",
	X"8EC9" when "1001010",
	X"8B90" when "1001011",
	X"88B7" when "1001100",
	X"8642" when "1001101",
	X"8433" when "1001110",
	X"828B" when "1001111",
	X"814C" when "1010000",
	X"8077" when "1010001",
	X"800C" when "1010010",
	X"800C" when "1010011",
	X"8077" when "1010100",
	X"814C" when "1010101",
	X"828B" when "1010110",
	X"8433" when "1010111",
	X"8642" when "1011000",
	X"88B7" when "1011001",
	X"8B90" when "1011010",
	X"8EC9" when "1011011",
	X"9262" when "1011100",
	X"9655" when "1011101",
	X"9AA1" when "1011110",
	X"9F42" when "1011111",
	X"A433" when "1100000",
	X"A971" when "1100001",
	X"AEF8" when "1100010",
	X"B4C2" when "1100011",
	X"BACA" when "1100100",
	X"C10D" when "1100101",
	X"C784" when "1100110",
	X"CE2A" when "1100111",
	X"D4FA" when "1101000",
	X"DBEE" when "1101001",
	X"E300" when "1101010",
	X"EA2A" when "1101011",
	X"F166" when "1101100",
	X"F8AF" when "1101101",
	X"0000" when others;

END ARCHITECTURE main;