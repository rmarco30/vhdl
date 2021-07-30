entity Experiment4_3G is
    port (A,B,C,D : in bit;
          Sel     : in bit_vector(1 downto 0);
          F       : out bit);
end entity; 

architecture sim of Experiment4_3G is

    begin
        
        with (Sel) select
            F <= A when "00",
                 B when "01",
                 C when "10",
                 D when "11";
                 
end architecture;
