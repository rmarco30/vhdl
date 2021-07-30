library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Experiment10E is
    port (Clock, Reset : in  std_logic;
          EN           : in  std_logic;
          CNT          : out std_logic_vector(3 downto 0));
end entity;

architecture sim of Experiment10E is
signal CNT_int : integer range 0 to 15;
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_int <= 0;
        elsif (Clock'event and Clock = '1') then
            if (EN = '1') then
                if (CNT_int = 15) then
                    CNT_int <= 0;
                else
                    CNT_int <= CNT_int + 1;
                end if;
            end if;
        end if;
    end process;
    
    CNT <= std_logic_vector(to_unsigned(CNT_int, 4));
end architecture;