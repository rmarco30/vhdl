library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;

entity Experiment7G is
end entity;

architecture sim of Experiment7G is

    component myComponent2
        port (ABC : in std_logic_vector(2 downto 0);
              F   : out std_logic);
    end component;
    
    signal ABC_TB : std_logic_vector(2 downto 0);
    signal F_TB   : std_logic;
    
    begin
        DUT : myComponent2 port map (ABC => ABC_TB, F => F_TB);
        
        STIMULUS : process
        
            file FIN : TEXT open READ_MODE is "input_file.txt";
            
            variable current_read_line  : line;
            variable current_read_field : std_logic_vector(2 downto 0);
            variable current_write_line : line;
            
            begin
              while (not endfile(FIN)) loop
                readline(FIN, current_read_line);
                read(current_read_line, current_read_field);
                    
                ABC_TB <= current_read_field; wait for 125 ns;
                    
                write(current_write_line, string'("Input Vector: ABC_TB="));
                write(current_write_line, ABC_TB);
                write(current_write_line, string'(" "));
                write(current_write_line, string'("DUT Output: F_TB="));
                write(current_write_line, F_TB);
                writeline(OUTPUT, current_write_line);
                
              end loop;
                
            wait;
            
        end process;
end architecture;
