library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Experiment10F is
    port (Clock, Reset : in  std_logic;
          EN           : in  std_logic;
          Load         : in  std_logic;
          CNT_in       : in  std_logic_vector(3 downto 0);
          CNT          : out std_logic_vector(3 downto 0));
end entity;

architecture sim of Experiment10F is
signal CNT_int : integer range 0 to 15;
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_int <= 0;
        elsif (Clock'event and Clock = '1') then
            if (Load = '1') then
                CNT_int <= to_integer(unsigned(CNT_in));
            else 
                if (EN = '1') then
                    if (CNT_int = 15) then
                        CNT_int <= 0;
                    else
                        CNT_int <= CNT_int + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    CNT <= std_logic_vector(to_unsigned(CNT_int, 4));
end architecture;
