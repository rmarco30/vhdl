library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment6A is
    port (Clock : in std_logic;
          F     : in std_logic;
          Q     : out std_logic);
end entity;
 
architecture sim of Experiment6A is
 
begin
 
    flip_flop : process (Clock)
        begin
            if(Clock'event and Clock = '1') then 
                Q <= F;
            end if;
        end process;
 
end architecture;