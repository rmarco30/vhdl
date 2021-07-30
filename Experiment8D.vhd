library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment8D is
    port (Clock         : in std_logic;
          Reset, Preset : in std_logic;
          D             : in std_logic;
          Q, Qn         : out std_logic);
end entity;

architecture sim of Experiment8D is 
begin
    D_FLIP_FLOP : process (Clock, Reset)
    begin
        if (Reset = '0') then
            Q  <= '0';
            Qn <= '1';
        elsif (Preset = '0') then
            Q  <= '1';
            Qn <= '0';
        elsif (Clock'event and Clock = '1') then
            Q  <= D;
            Qn <= not D;
        end if;
    end process;
end architecture;
