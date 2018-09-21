library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity mux is
	 Port ( 
	 i1 : in std_logic_vector(3 downto 0);
	 i2 : in std_logic_vector(3 downto 0);
	 i3 : in std_logic_vector(3 downto 0);
	 i4 : in std_logic_vector(3 downto 0);
	 i5 : in std_logic_vector(3 downto 0);
	 i6 : in std_logic_vector(3 downto 0);
	 sel : in std_logic_vector(2 downto 0);
	 selected : out std_logic_vector(3 downto 0));
end mux;
 
architecture mux_arch of mux is
begin
		if sel = '000' then
			selected <= i1;
		elsif sel = '001' then
			selected <= i2;
		elsif sel = '010' then
			selected <= i3;
		elsif sel = '011' then
			selected <= i4;
		elsif sel = '100' then
			selected <= i5;
		elsif sel = '101' then
			selected <= i6;
		end if;
	

end architecture;