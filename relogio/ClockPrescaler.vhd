library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClockPrescaler is
    port(
        clock   : in STD_LOGIC; -- 50 Mhz
        final_clock     : out STD_LOGIC
    );
end ClockPrescaler;

architecture Behavioral of ClockPrescaler is
    -- prescaler should be (clock_speed/desired_clock_speed)/2 because you want a rising edge every period
    signal prescaler: STD_LOGIC_VECTOR(24 downto 0) := "1011111010111100001000000"; -- 25,000,000 in binary
    signal prescaler_counter: STD_LOGIC_VECTOR(24 downto 0) := (others => '0');
    signal newClock : std_logic := '0';
begin

    final_clock <= newClock;

    countClock: process(clock, newClock)
    begin
        if rising_edge(clock) then
            prescaler_counter <= prescaler_counter + 1;
            if(prescaler_counter > prescaler) then
                -- Iterate
                newClock <= not newClock;

                prescaler_counter <= (others => '0');
            end if;
        end if;
    end process;


end Behavioral;