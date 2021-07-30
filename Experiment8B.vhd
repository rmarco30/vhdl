library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment8B is 
    port (Clock : in std_logic;
          D     : in std_logic;
          Q, Qn : out std_logic);
end entity;

architecture sim of Experiment8B is
begin
    D_FLIP_FLOP : process (Clock)
    begin
        if (Clock'event and Clock = '1') then
            Q  <= D;
            Qn <= not D;
        end if;
    end process;
end architecture;
