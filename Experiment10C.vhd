library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.numeric_std_unsigned.all;

entity Experiment10C is
    port (Clock, Reset : in  std_logic;
          CNT          : out std_logic_vector(3 downto 0));
end entity;

architecture sim of Experiment10C is
signal CNT_std : std_logic_vector(3 downto 0);
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_std <= "0000";
        elsif (Clock'event and Clock = '1') then
            CNT_std <= CNT_std + 1;
            end if;
    end process;
    
    CNT <= CNT_std;
end architecture;
