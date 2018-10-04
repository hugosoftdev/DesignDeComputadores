library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity alu is
	 Port ( 
	 regA : in std_logic_vector(3 downto 0);
	 regB : in std_logic_vector(3 downto 0);
	 func : in STD_LOGIC;
	 output : out std_logic_vector(3 downto 0);
	 flag: out std_logic);
end alu;
 
architecture alu_arch of alu is

begin
	process(regA,regB,func,output,flag) begin
		if (func = '1') then 
			output <= std_logic_vector(unsigned(regA) + unsigned(regB));
		else
			output <= std_logic_vector(unsigned(regA) - unsigned(regB));
		end if;
		
		if (output = "0000") then
			flag <= '1';
		else
			flag <= '0';
		end if;
	end process;
  
end architecture;