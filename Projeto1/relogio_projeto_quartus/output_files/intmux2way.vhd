library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity intmux2way is
	 Port ( 
	 i1 : in  integer range 0 to 50000000;
	 i2 : in  integer range 0 to 50000000;
	 sel : in std_logic;
	 selected : out  integer range 0 to 50000000);
end intmux2way;
 
architecture intmux2way_arch of intmux2way is
begin
	process (i1,i2,sel) begin
		if sel = '0' then
			selected <= i1;
		else
			selected <= i2;
		end if;
	end process;
end architecture;