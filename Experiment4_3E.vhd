entity Experiment4_3E is
    port (ABC : in bit_vector(2 downto 0);
          F   : out bit_vector(6 downto 0));
end entity; 

architecture sim of Experiment4_3E is

    begin
        
        with (ABC) select
            F <= "1111110" when "000",
                 "0110000" when "001",
                 "1101101" when "010",
                 "1111001" when "011",
                 "0110011" when "100",
                 "1011011" when "101",
                 "1011111" when "110",
                 "1110000" when "111";
                 
end architecture;  
