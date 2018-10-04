library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity zero is
	 Port ( 
	 data : in std_logic_vector(3 downto 0);
	 sel : in std_logic;
	 result : out std_logic_vector(3 downto 0));
end zero;
 
architecture zero_arch of zero is
begin
	process (data, sel, result) begin
		if sel = '1' then
			result <= "0000";
		else
			result <= data;
		end if;
	end process;

end architecture;