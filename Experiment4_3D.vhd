entity Experiment4_3D is
    port (ABC : in bit_vector(2 downto 0);
          F   : out bit_vector(7 downto 0));
end entity; 

architecture sim of Experiment4_3D is

    begin
        
        with (ABC) select
            F <= "00000001" when "000",
                 "00000010" when "001",
                 "00000100" when "010",
                 "00001000" when "011",
                 "00010000" when "100",
                 "00100000" when "101",
                 "01000000" when "110",
                 "10000000" when "111";
                 
end architecture;
