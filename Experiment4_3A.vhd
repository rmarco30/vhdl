entity Experiment4_3A is
    port (A, B, C : in bit;
          F       : out bit);
end entity; 

architecture sim of Experiment4_3A is
    signal ABC : bit_vector(2 downto 0);
    
    begin
        ABC <= A & B & C;
        	
        with (ABC) select
            F <= '1' when "000",
                 '0' when "001",
                 '1' when "010",
                 '0' when "011",
                 '0' when "100",
                 '0' when "101",
                 '1' when "110",
                 '0' when "111";
                 
end architecture;
