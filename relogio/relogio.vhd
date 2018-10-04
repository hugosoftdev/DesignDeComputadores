library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity relogio is
	port(
		CLOCK_50:  in std_logic;
		HEX2 : out std_logic_vector(6 downto 0); --US
		HEX3 : out std_logic_vector(6 downto 0); --DS
		HEX4 : out std_logic_vector(6 downto 0); --UM
		HEX5 : out std_logic_vector(6 downto 0); --DM
		HEX6 : out std_logic_vector(6 downto 0); -- UH
		HEX7 : out std_logic_vector(6 downto 0); -- DH
		aluDebug: out std_logic_vector(3 downto 0);
		outputDebug: out std_logic_vector(8 downto 0);
		zeroFlagDebug: out std_logic;
		zeroDisplayDebug: out std_logic;
		pcDebug: out std_logic_vector(3 downto 0)
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
           ENABLE : in  std_logic;
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

component romMif
    generic
    (
        DATA_WIDTH : natural := 9;
        ADDR_WIDTH : natural := 4
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

component PCHandler is
	 Port ( 
	 clk: in std_logic;
	 zeroFlag : in std_logic;
	 zeroDisplay : in std_logic;
	 pc : in std_logic_vector(3 downto 0);
	 pcOut : out std_logic_vector(3 downto 0));
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

component ClockPrescaler is
    port(
        clock   : in STD_LOGIC; -- 50 Mhz
        final_clock     : out STD_LOGIC
    );
end component;

component zero is
	 Port ( 
	 data : in std_logic_vector(3 downto 0);
	 sel : in std_logic;
	 result : out std_logic_vector(3 downto 0));
end component;
 


-- sinais

signal output: std_logic_vector (8 downto 0);
signal address: integer;
signal pc: std_logic_vector (3 downto 0);
signal pcOut: std_logic_vector (3 downto 0);
signal tempPc: std_logic_vector (3 downto 0);
signal whichDisplay: std_logic_vector (2 downto 0);
signal registerBValue: std_logic_vector (3 downto 0);
signal func: std_logic;
signal display: std_logic_vector (3 downto 0);
signal zeroFlag: std_logic;
signal zeroDisplay : std_logic;
signal aluResult: std_logic_vector(3 downto 0);
signal finalAluResult: std_logic_vector(3 downto 0);
signal segmentedResult :std_logic_vector(6 downto 0);
signal oneIncrement: std_logic_vector(3 downto 0);
signal oficialClock: std_logic;


--register sinais
signal r1, r1out: std_logic_vector(3 downto 0);
signal r2, r2out: std_logic_vector(3 downto 0);
signal r3, r3out: std_logic_vector(3 downto 0);
signal r4, r4out: std_logic_vector(3 downto 0);
signal r5, r5out: std_logic_vector(3 downto 0);
signal r6, r6out: std_logic_vector(3 downto 0);

-- sinal certo :D
signal fixedClock: std_logic;


begin
	process(oficialClock) begin
		if (RISING_EDGE(oficialClock)) then	
			address <= to_integer(unsigned(pcOut));
			whichDisplay <= output(8 downto 6);
			registerBValue <= output(5 downto 2);
			func <= output(1);
			zeroDisplay <= output(0);
		end if;
	end process;
	
	--debug
	oficialClock <= 	CLOCK_50;
	aluDebug <= aluResult;
	outputDebug <= output;
	zeroFlagDebug <= zeroFlag;
	zeroDisplayDebug <= zeroDisplay;
	pcDebug <= pcOut;
	
	-- choose command
	e1: romMif port map (addr => address,q => output);
	--e55: ClockPrescaler port map (clock => CLOCK_50, final_clock => oficialClock );
	
	--registers
	q1:  Registrador  port map (DIN => r1, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r1out);
	q2:  Registrador  port map (DIN => r2, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r2out);
	q3:  Registrador  port map (DIN => r3, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r3out);
	q4:  Registrador  port map (DIN => r4, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r4out);
	q5:  Registrador  port map (DIN => r5, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r5out);
	q6:  Registrador  port map (DIN => r6, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => r6out);
	
	--pc stuffs
	q7:  Registrador  port map (DIN => pc, ENABLE => '1', CLK => oficialClock, RST => '0', DOUT => pcOut);
	q8: PCHandler port map(clk => oficialClock, pc => pcOut, zeroFlag => zeroFlag, zeroDisplay => zeroDisplay, pcOut => pc);
	
	--- definir qual sinal mandar para alu
	e2: mux port map(i1 => r1out, i2 => r2out, i3 => r3out,i4 => r4out, i5 => r5out, i6 => r6out,sel => whichDisplay,selected => display);
	
	-- realizar operacao
	e3: alu port map (regA => display, regB => registerBValue, func => func, output => aluResult, flag => zeroFlag); 
	
	--checa se deve zerar o resultado
	t1: zero port map (data => aluResult,sel => zeroDisplay, result => finalAluResult);
	
	-- transforma a paradinha pra parada certa segmentada
	e4: conversorHex7Seg port map(dadoHex => finalAluResult, saida7seg => segmentedResult );
	
	-- saber para qual registrador/display devolver :D
	e5: dmux port map(o1 => r1, o2 => r2, o3 => r3, o4 => r4, o5 => r5, o6 => r6, data => finalAluResult, sel => whichDisplay);
	e6: dmux generic map (dataSize   => 7) port map(o1 => HEX2, o2 => HEX3, o3 => HEX4, o4 => HEX5, o5 => HEX6, o6 => HEX7, data => segmentedResult, sel => whichDisplay );
	
end architecture;