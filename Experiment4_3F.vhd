entity Experiment4_3F is
    port (ABCD : in bit_vector(3 downto 0);
          YZ   : out bit_vector(1 downto 0));
end entity; 

architecture sim of Experiment4_3F is

    begin
        
        with (ABCD) select
            YZ <= "00" when "0001",
                  "01" when "0010",
                  "10" when "0100",
                  "11" when "1000",
                  "00" when others;
                  
end architecture;
