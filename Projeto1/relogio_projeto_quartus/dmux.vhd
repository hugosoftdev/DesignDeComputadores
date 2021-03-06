library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity dmux is
    generic
    (dataSize : natural := 4);
	 Port ( 
	 o1 : out std_logic_vector((dataSize-1) downto 0);
	 o2 : out std_logic_vector((dataSize-1) downto 0);
	 o3 : out std_logic_vector((dataSize-1) downto 0);
	 o4 : out std_logic_vector((dataSize-1) downto 0);
	 o5 : out std_logic_vector((dataSize-1) downto 0);
	 o6 : out std_logic_vector((dataSize-1) downto 0);
	 sel : in std_logic_vector(2 downto 0);
	 data : in std_logic_vector((dataSize-1) downto 0));
end dmux;
 
architecture dmux_arch of dmux is
begin
	process (sel,data) begin
		if sel = "000" then
			o1 <= data;
		elsif sel = "001" then
			o2 <= data;
		elsif sel = "010" then
			o3 <= data;
		elsif sel = "011" then
			o4 <= data;
		elsif sel = "100" then
			o5 <= data;
		elsif sel = "101" then
			o6 <= data;
		end if;
	end process;
	
  
end architecture;