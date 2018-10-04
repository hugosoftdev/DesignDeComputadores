library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity relogio is
	port(
		CLOCK_50:  in std_logic;
		SW: in std_logic_vector(17 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		HEX2 : out std_logic_vector(6 downto 0); --US
		HEX3 : out std_logic_vector(6 downto 0); --DS
		HEX4 : out std_logic_vector(6 downto 0); --UM
		HEX5 : out std_logic_vector(6 downto 0); --DM
		HEX6 : out std_logic_vector(6 downto 0); -- UH
		HEX7 : out std_logic_vector(6 downto 0) -- DH
		);
end entity;

architecture arch of relogio is

--instanciando componentes

component Registrador is
    generic (
        larguraDados : natural := 4
    );
      port (DIN : in    std_logic_vector(larguraDados-1 downto 0);
           DOUT : out   std_logic_vector(larguraDados-1 downto 0);
            ENABLE : in  std_logic_vector(2 downto 0);
           CLK,RST : in std_logic);
end component;

component dmux is
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
end component;

component conversorHex7Seg is
  port
  (
    -- Input ports
    dadoHex  : in  std_logic_vector(3 downto 0);
    apaga  : in  std_logic := '0';
    negativo : in  std_logic := '0';
    overFlow : in  std_logic := '0';
    -- Output ports
    saida7seg : out std_logic_vector(6 downto 0)
  );
end component;

component mux2way is
	 Port ( 
	 i1 : in std_logic_vector(3 downto 0);
	 i2 : in std_logic_vector(3 downto 0);
	 sel : in std_logic;
	 selected : out std_logic_vector(3 downto 0));
end component;


component romMif
    generic
    (
        DATA_WIDTH : natural := 12;
        ADDR_WIDTH : natural := 5
    );

    port (
     
        addr: in natural range 0 to 2**ADDR_WIDTH-1;
        q: out std_logic_vector (DATA_WIDTH-1 downto 0)
    );
end component;

component alu is
	 port ( 
		 regA : in std_logic_vector(3 downto 0);
		 regB : in std_logic_vector(3 downto 0);
		 func : in STD_LOGIC;
		 output : out std_logic_vector(3 downto 0);
		 flag: out std_logic);
end component;

component mux is
	 port ( 
	 i1 : in std_logic_vector(3 downto 0);
	 i2 : in std_logic_vector(3 downto 0);
	 i3 : in std_logic_vector(3 downto 0);
	 i4 : in std_logic_vector(3 downto 0);
	 i5 : in std_logic_vector(3 downto 0);
	 i6 : in std_logic_vector(3 downto 0);
	 sel : in std_logic_vector(2 downto 0);
	 selected : out std_logic_vector(3 downto 0));
end component;

component intmux2way is
	 Port ( 
	 i1 : in  integer range 0 to 50000000;
	 i2 : in  integer range 0 to 50000000;
	 sel : in std_logic;
	 selected : out  integer range 0 to 50000000);
end component;


-- sinais
signal output: std_logic_vector (11 downto 0);
signal display: std_logic_vector (3 downto 0);

signal aluFlag: std_logic;
signal aluResult: std_logic_vector(3 downto 0);

signal finalNumber: std_logic_vector(3 downto 0);

--register sinais
signal r1, r1out, r1display: std_logic_vector(3 downto 0);
signal r2, r2out, r2display: std_logic_vector(3 downto 0);
signal r3, r3out, r3display: std_logic_vector(3 downto 0);
signal r4, r4out, r4display: std_logic_vector(3 downto 0);
signal r5, r5out, r5display: std_logic_vector(3 downto 0);
signal r6, r6out, r6display: std_logic_vector(3 downto 0);



-- pc stuffs
signal pc: integer range 0 to 31 := 0;

signal counter : integer range 0 to 50000000 := 0;

signal clockEndCounter : integer range 0 to 50000000 := 0;

signal memoryPartition : integer range 0 to 16 := 0;

begin
	process(CLOCK_50) begin
		if rising_edge(CLOCK_50) then 
		
			-- responsavel por mudar a partição da memória com as devidas instruções
			if(to_integer(unsigned(r6out)) = 2) then
				memoryPartition <= 16;
			else
				memoryPartition <= 0;
			end if;
				
		
			-- checa se a maquina de estados continua o fluxo ou deve hibernar
			if(output(4) or aluFlag) then
				pc <=  to_integer(unsigned(output(3 downto 0))) + memoryPartition;
			else
				pc <= 0;
			end if;	
			
			-- garante que a maquina de estados reinicie a cada 1s
			counter <= counter + 1;
			if(counter = clockEndCounter) then 
				 counter <= 0;		 
				 pc <= 1;
			end if;
			
			
		end if;
	end process;

	
	-- escolha da instrução
	e1: romMif port map (addr => pc,q => output);
	
	--clock choose
	e5: intmux2way port map(i1 => 50000000, i2 => 1000000,sel => (not KEY(1)), selected => clockEndCounter);
	
	--registers
	q1:  Registrador  port map (DIN => r1, ENABLE => (output(11 downto 9) xnor "000"), CLK => CLOCK_50, RST => '0', DOUT => r1out);
	q2:  Registrador  port map (DIN => r2, ENABLE => (output(11 downto 9) xnor "001"), CLK => CLOCK_50, RST => '0', DOUT => r2out);
	q3:  Registrador  port map (DIN => r3display, ENABLE => ((output(11 downto 9) xnor "010") or ((not KEY(0)) & (not KEY(0)) & (not KEY(0)))), CLK => CLOCK_50, RST => '0', DOUT => r3out);
	q4:  Registrador  port map (DIN => r4display, ENABLE => ((output(11 downto 9) xnor "011") or ((not KEY(0)) & (not KEY(0)) & (not KEY(0)))), CLK => CLOCK_50, RST => '0', DOUT => r4out);
	q5:  Registrador  port map (DIN => r5display, ENABLE => ((output(11 downto 9) xnor "100") or ((not KEY(0)) & (not KEY(0)) & (not KEY(0)))), CLK => CLOCK_50, RST => '0', DOUT => r5out);
	q6:  Registrador  port map (DIN => r6display, ENABLE => ((output(11 downto 9) xnor "101") or ((not KEY(0)) & (not KEY(0)) & (not KEY(0)))), CLK => CLOCK_50, RST => '0', DOUT => r6out);
	
	
	--- definir qual valor dos registradores mandar para alu
	e2: mux port map(i1 => r1out, i2 => r2out, i3 => r3out,i4 => r4out, i5 => r5out, i6 => r6out,sel => output(11 downto 9),selected => display);
	
	-- realizar operacao 
	e3: alu port map (regA => display, regB => output(8 downto 5), func => output(4), output => aluResult, flag => aluFlag); 	
	
	e4: mux2way port map(i1 => aluResult, i2 => display,sel => ((not aluFlag) and (not output(4))), selected => finalNumber);
	
	
	-- saber para qual registrador/display devolver :D
	clock_c: dmux port map(o1 => r1, o2 => r2, o3 => r3, o4 => r4, o5 => r5, o6 => r6, data => finalNumber, sel => output(11 downto 9));
	
	--para mudança do horário pelo botão e binário das chaves
	e13: mux2way port map(i1 => r3, i2 => SW(5 downto 2),sel => (not KEY(0)), selected => r3display);
	e14: mux2way port map(i1 => r4, i2 => SW(9 downto 6),sel => (not KEY(0)), selected => r4display);
	e15: mux2way port map(i1 => r5, i2 => SW(13 downto 10),sel => (not KEY(0)), selected => r5display);
	e16: mux2way port map(i1 => r6, i2 => SW(17 downto 14),sel => (not KEY(0)), selected => r6display);
	
	-- parte que se encarrega de linkar os registradores à seus respectivos displays
	e6: conversorHex7Seg port map(dadoHex => r1out, saida7seg => HEX2 );
	e7: conversorHex7Seg port map(dadoHex => r2out, saida7seg => HEX3 );
	e8: conversorHex7Seg port map(dadoHex => r3out, saida7seg => HEX4 );
	e9: conversorHex7Seg port map(dadoHex => r4out, saida7seg => HEX5 );
	e10: conversorHex7Seg port map(dadoHex => r5out, saida7seg => HEX6 );
	e11: conversorHex7Seg port map(dadoHex => r6out, saida7seg => HEX7 );

end architecture;