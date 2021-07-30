library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Experiment10A is
    port (Clock, Reset : in  std_logic;
          CNT          : out unsigned(3 downto 0));
end entity;

architecture sim of Experiment10A is
signal CNT_tmp : unsigned(3 downto 0);
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_tmp <= "0000";
        elsif (Clock'event and Clock = '1') then
            CNT_tmp <= CNT_tmp + 1;
        end if;
    end process;
    
    CNT <= CNT_tmp;
end architecture;