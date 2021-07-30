entity Experiment4_3C is
    port (A, B, C : in bit;
          F       : out bit);
end entity; 

architecture sim of Experiment4_3C is
    signal ABC : bit_vector(2 downto 0);
    
    begin
        ABC <= A & B & C;
        
        with (ABC) select
            F <= '1' when "000" | "010" | "110",
                 '0' when others;
                 
end architecture;
