library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment6B is
    port (Clock : in std_logic;
          F     : in std_logic;
          Q     : out std_logic);
end entity;
 
architecture sim of Experiment6B is
 
begin
 
    flip_flop : process (Clock)
        begin
            if(rising_edge(Clock)) then 
                Q <= F;
            end if;
        end process;
 
end architecture;
