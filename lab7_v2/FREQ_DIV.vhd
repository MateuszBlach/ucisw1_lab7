library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FREQ_DIV is
    Port ( CLK_50 : in  STD_LOGIC;
           CLK : out  STD_LOGIC);
end FREQ_DIV;

architecture Behavioral of FREQ_DIV is
signal counter : UNSIGNED (25 downto 0) := "00000000000000000000000000";
signal output : STD_LOGIC := '0';
begin

process (CLK_50) begin
	if rising_edge(CLK_50) then
		counter <= counter + 1;
		if counter = "00000000000000000000000000" then
			output <= not output;
		end if;
	end if;
end process;

CLK <= output;

end Behavioral;