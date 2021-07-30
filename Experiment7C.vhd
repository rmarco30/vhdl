library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment7C is
end entity;

architecture sim of Experiment7C is 

    component myComponent                   --Component Declaration
        port (A, B, C : in std_logic;
              F       : out std_logic);
    end component;
    
    signal A_TB, B_TB, C_TB : std_logic;    --Signal Declaration
    signal F_TB             : std_logic;
    
    begin
    
        DUT1: myComponent port map(A => A_TB, --DUT Instantiation
                                    B => B_TB,
                                    C => C_TB,
                                    F => F_TB);
                                    
    --Stimulus Generation
    STIMULUS : process
        begin
        A_TB <= '0'; B_TB <= '0'; C_TB <= '0'; wait for 100 ns;
        report "Inputting Pattern '000'" severity NOTE;
        A_TB <= '0'; B_TB <= '0'; C_TB <= '1'; wait for 100 ns;
        report "Inputting Pattern '001'" severity NOTE;
        A_TB <= '0'; B_TB <= '1'; C_TB <= '0'; wait for 100 ns;
        report "Inputting Pattern '010'" severity NOTE;
        A_TB <= '0'; B_TB <= '1'; C_TB <= '1'; wait for 100 ns;
        report "Inputting Pattern '011'" severity NOTE;
        A_TB <= '1'; B_TB <= '0'; C_TB <= '0'; wait for 100 ns;
        report "Inputting Pattern '100'" severity NOTE;
        A_TB <= '1'; B_TB <= '0'; C_TB <= '1'; wait for 100 ns;
        report "Inputting Pattern '101'" severity NOTE;
        A_TB <= '1'; B_TB <= '1'; C_TB <= '0'; wait for 100 ns;
        report "Inputting Pattern '110'" severity NOTE;
        A_TB <= '1'; B_TB <= '1'; C_TB <= '1'; wait for 100 ns;
        report "Inputting Pattern '111'" severity NOTE;
    end process;
    
end architecture;
