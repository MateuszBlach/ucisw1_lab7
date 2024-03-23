library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LICZNIK is
    port (
        CLK     : in STD_LOGIC;
        CHANGE_DIR  : in STD_LOGIC;
        RESET   : in STD_LOGIC;
        START   : in STD_LOGIC;
        START_V : in STD_LOGIC_VECTOR (7 downto 0);
	    CNT_V   : out STD_LOGIC_VECTOR (7 downto 0)
    );
end LICZNIK;

architecture Behavioral of LICZNIK is
    signal counter : UNSIGNED (7 downto 0);
    signal is_counting : STD_LOGIC := '0';
    signal up : STD_LOGIC := '1';
	 
begin
    count : process(CLK, RESET, START, START_V)
    begin
		if reset = '1' then
			counter <= "00000000";
         is_counting <= '0';
		elsif start = '1' then
				counter <= UNSIGNED ( START_V );
				is_counting <= '1';
		elsif rising_edge(CLK) then
				if is_counting='1' then
					if up = '1' then
						counter <= counter + 1;
					else
						counter <= counter - 1;
					end if;
				end if;
			end if;
		    end process;
    
    CNT_V <= STD_LOGIC_VECTOR( counter ); 
    
    change_direction : process( CHANGE_DIR ) 
    begin
        if rising_edge( CHANGE_DIR ) then
            up <= not up;
        end if;
    end process;
    
end Behavioral;
