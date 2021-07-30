library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Laboratory7B is
end entity;

architecture sim of Laboratory7B is 
    
    component lab7B_component 
        port (myInput    : in std_logic_vector(3 downto 0);
              F          : out std_logic);
    end component;
    
    signal myInput : std_logic_vector(3 downto 0);
    signal F       : std_logic;
    
    begin
    
        DUT : lab7B_component port map (myInput, F);
        
        STIMULUS : process
            
            begin
                
                for i in 0 to 15 loop
                    myInput <= std_logic_vector(to_unsigned(i,4));
                    wait for 10 ns;
                end loop;
                
        end process;
        
end architecture;
