entity Experiment4_2C is
    port(ABC : in bit_vector(2 downto 0);
         F   : out bit_vector(7 downto 0));
end entity;

architecture sim of Experiment4_2C is 
begin
    F <= "00000001" when (ABC = "000") else
         "00000010" when (ABC = "001") else
         "00000100" when (ABC = "010") else
         "00001000" when (ABC = "011") else
         "00010000" when (ABC = "100") else
         "00100000" when (ABC = "101") else
         "01000000" when (ABC = "110") else
         "10000000" when (ABC = "111");
end architecture;
