library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mux2way is
	 Port ( 
	 i1 : in std_logic_vector(3 downto 0);
	 i2 : in std_logic_vector(3 downto 0);
	 sel : in std_logic;
	 selected : out std_logic_vector(3 downto 0));
end mux2way;
 
architecture mux2way_arch of mux2way is
begin
	process (i1,i2,sel) begin
		if sel = '0' then
			selected <= i1;
		else
			selected <= i2;
		end if;
	end process;
end architecture;