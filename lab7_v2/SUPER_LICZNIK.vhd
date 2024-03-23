library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SUPER_LICZNIK is
    Port (
			RS_txd : out STD_LOGIC;
        RS_RX   : in STD_LOGIC;
        CLK_50      : in STD_LOGIC;
	    RESET       : in STD_LOGIC;
        CHANGE_DIR  : in STD_LOGIC;
			lcd_e : out STD_LOGIC;
			lcd_rs : out STD_LOGIC;
			lcd_rw : out STD_LOGIC;
			lcd_d : inout STD_LOGIC_VECTOR (3 downto 0);
			sf_ce : out STD_LOGIC
    );
end SUPER_LICZNIK;

architecture Structural of SUPER_LICZNIK is
    signal start_counting : STD_LOGIC := '0';
    signal start_value : STD_LOGIC_VECTOR ( 7 downto 0 ) := "00000000";
    signal display_value : STD_LOGIC_VECTOR ( 7 downto 0 ) := "00000000";
    signal padding_bits : STD_LOGIC_VECTOR ( 55 downto 0 ) := "00000000000000000000000000000000000000000000000000000000";
    signal blank_mask : STD_LOGIC_VECTOR ( 15 downto 0 ) := "1111111111111100";
	 signal display_input : STD_LOGIC_VECTOR (63 downto 0);
	 signal CLK : STD_LOGIC;
    signal tdi_mask : STD_LOGIC_VECTOR ( 7 downto 0 ) := "00000000";
	 signal zero : STD_LOGIC := '0';
	
	component LICZNIK
	    port (
        CLK     : in STD_LOGIC;
        CHANGE_DIR  : in STD_LOGIC;
        RESET   : in STD_LOGIC;
        START   : in STD_LOGIC;
        START_V : in STD_LOGIC_VECTOR (7 downto 0);
	    CNT_V   : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
	
	component RECEIVER
	    port (
				t_di : in STD_LOGIC_VECTOR ( 7 downto 0 );
				przyc_start : in STD_LOGIC;
				przyc_reset : in STD_LOGIC;
				zegar_sys : in STD_LOGIC;
				rs_read : in STD_LOGIC;
				rs_trans : out STD_LOGIC;
				rs_do : out STD_LOGIC_VECTOR (7 downto 0);
				read_rdy : out STD_LOGIC;
				trans_busy : out STD_LOGIC
	    );
    end component;
    
    component DISPLAY
        port (
				linia_wej : in STD_LOGIC_VECTOR ( 63 downto 0 );
				blank : in STD_LOGIC_VECTOR ( 15 downto 0 );
				przyc_reset : in STD_LOGIC;
				zegar_50 : in STD_LOGIC;
				lcd_e : out STD_LOGIC;
				lcd_rs : out STD_LOGIC;
				lcd_rw : out STD_LOGIC;
				lcd_d : inout STD_LOGIC_VECTOR (3 downto 0);
				sf_ce : out STD_LOGIC
	   );
    end component;
	 
	 component FREQ_DIV
		port (
			CLK_50 : in STD_LOGIC;
			CLK : out STD_LOGIC
			);
	end component;

begin
	 
	 display_input<=padding_bits & display_value;
    
    licznik_rdzen : LICZNIK
    port map(
        CLK => CLK,
        CHANGE_DIR => CHANGE_DIR,
        RESET => RESET,
        START => start_counting,
        START_V => start_value,
		  CNT_V => display_value
	);
	
	port_szeregowy : RECEIVER
	port map(
				t_di => tdi_mask,
				przyc_start => zero,
				przyc_reset => RESET,
				zegar_sys => CLK_50,
				rs_read => RS_RX,
				rs_trans => RS_txd,
				rs_do => start_value,
				read_rdy => start_counting
			--trans_busy => ;
	);
	
	sterownik_wyswietlacza : DISPLAY
    port map(
				linia_wej => display_input ,
				blank => blank_mask, 
				przyc_reset => RESET, 
				zegar_50 => CLK_50,
				lcd_e => lcd_e,
				lcd_rs => lcd_rs,
				lcd_rw => lcd_rw,
				lcd_d => lcd_d,
				sf_ce => sf_ce
	);
	
	frequency_divider : FREQ_DIV
	port map(
		CLK_50 => CLK_50,
		CLK => CLK
	);
		
	
end Structural;
