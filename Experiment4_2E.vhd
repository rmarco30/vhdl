entity Experiment4_2E is
    port(ABCD : in bit_vector(3 downto 0);
         YZ   : out bit_vector(1 downto 0));
end entity;

architecture sim of Experiment4_2E is 
begin
    YZ <= "00" when (ABCD = "0001") else
          "01" when (ABCD = "0010") else
          "10" when (ABCD = "0100") else
          "11" when (ABCD = "1000") else
          "00";      
end architecture;