library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Experiment10B is
    port (Clock, Reset : in  std_logic;
          CNT          : out unsigned(3 downto 0));
end entity;

architecture sim of Experiment10B is
signal CNT_int : integer;
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_int <= 0;
        elsif (Clock'event and Clock = '1') then
            if (CNT_int = 15) then
                CNT_int <= 0;
            else
                CNT_int <= CNT_int + 1;
            end if;
        end if;
    end process;
    
    CNT <= to_unsigned(CNT_int, 4);
end architecture;
