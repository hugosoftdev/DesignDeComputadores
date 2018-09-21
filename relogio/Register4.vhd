Library ieee;
use ieee.std_logic_1164.all;

entity Register4 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(3 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(3 downto 0)
	);
end entity;

architecture Register4_arch of Register4 is

component BinaryDigit
port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end component;

begin
	e5: BinaryDigit port map (clock,input(3),load,output(3));
	e6: BinaryDigit port map (clock,input(2),load,output(2));
	e7: BinaryDigit port map (clock,input(1),load,output(1));
	e8: BinaryDigit port map (clock,input(0),load,output(0));
end architecture;