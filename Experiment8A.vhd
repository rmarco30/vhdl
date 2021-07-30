library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment8A is 
    port (C, D  : in std_logic;
          Q, Qn : out std_logic);
end entity;

architecture sim of Experiment8A is
begin
    D_LATCH : process (C, D)
    begin
        if (C = '1') then
            Q  <= D; 
            Qn <= not D;
        end if;
    end process;
end architecture;   
