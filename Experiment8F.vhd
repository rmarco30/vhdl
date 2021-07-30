library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment8F is
    port (Clock   : in  std_logic;
          Reset   : in  std_logic;
          Reg_In  : in  std_logic_vector(7 downto 0);
          EN      : in  std_logic;
          Reg_Out : out std_logic_vector(7 downto 0));
end entity;

architecture sim of Experiment8F is
begin
    Reg_Proc : process (Clock, Reset) 
    begin
        if (Reset = '0') then
            Reg_Out <= x"00";
        elsif (Clock'event and Clock = '1') then
            if (EN = '1') then
                Reg_Out <= Reg_In;
            end if;
        end if;
    end process;
end architecture;
