library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity PCHandler is
	 Port ( 
	 clk: in std_logic;
	 zeroFlag : in std_logic;
	 zeroDisplay : in std_logic;
	 pc : in std_logic_vector(3 downto 0);
	 pcOut : out std_logic_vector(3 downto 0));
end PCHandler;
 
architecture PCHandler_arch of PCHandler is

signal oneIncrement:  std_logic_vector(3 downto 0);
 
begin
	process (clk) begin
		if (RISING_EDGE(clk)) then	
			-- se a comparação deu 1 é pq transbordou
			if ((not zeroFlag) and (not zeroDisplay)) then
				pcOut <= "0000";
			elsif (pc = "1000") then
				pcOut <= "0000";
			else
				oneIncrement <= "0001";
				pcOut <= std_logic_vector(unsigned(pc) + unsigned(oneIncrement));
			end if;		
		end if;
	end process;

end architecture;