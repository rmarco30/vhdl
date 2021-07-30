library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;

entity Experiment7F is
end entity;

architecture sim of Experiment7F is

    component myComponent2
        port (ABC : in std_logic_vector(2 downto 0);
              F   : out std_logic);
    end component;
    
    signal ABC_TB : std_logic_vector(2 downto 0);
    signal F_TB   : std_logic;
    
    begin
        DUT : myComponent2 port map (ABC => ABC_TB, F => F_TB);
        
        STIMULUS : process
        
        variable current_line : line;
        
        begin
            write(current_line, string'("Beginning Test(Input=ABC, OUTPUT=F)"));
            writeline(OUTPUT,current_line);
            
            ABC_TB <= "000"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "001"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "010"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "011"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "100"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "101"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "110"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            ABC_TB <= "111"; wait for 125 ns;
            
            write(current_line, string'("ABC="));
            write(current_line, ABC_TB);
            write(current_line, string'(", F="));
            write(current_line, F_TB);
            writeline(OUTPUT, current_line);
            
            wait;
            
        end process;
end architecture;
