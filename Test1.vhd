library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Test1 is
    port (A       : out std_logic_vector(3 downto 0);
          F       : out bit);
end entity; 

architecture sim of Test1 is

    signal A_TB : std_logic_vector(3 downto 0);

    begin
        STIMULUS : process
        begin
            for i in 0 to 15 loop
                A <= std_logic_vector(to_unsigned(i,4));
                wait for 10 ns;
            end loop;

     end process;
                 
end architecture;
