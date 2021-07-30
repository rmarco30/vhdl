library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Laboratory10 is
    port (Clock, Reset : in  std_logic;
          CNT_dir      : in  std_logic;
          CNT          : out unsigned(15 downto 0));
end entity;

architecture sim of Laboratory10 is
signal CNT_tmp : integer;
begin
    
    COUNTER : process(Clock, Reset)
    begin
        if(Reset = '0') then
            CNT_tmp <= 0;
        elsif (Clock'event and Clock = '1') then
            if (CNT_dir = '1') then
                CNT_tmp <= CNT_tmp + 1;
            else
                CNT_tmp <= CNT_tmp - 1;
            end if;
        end if;
    end process;
    
    CNT <= to_unsigned(CNT_tmp, 16);
end architecture;