entity Experiment4_2D is
    port(ABC : in bit_vector(2 downto 0);
         F   : out bit_vector(6 downto 0));
end entity;

architecture sim of Experiment4_2D is 
begin
    F <= "1111110" when (ABC = "000") else
         "0110000" when (ABC = "001") else
         "1101101" when (ABC = "010") else
         "1111001" when (ABC = "011") else
         "0110011" when (ABC = "100") else
         "1011011" when (ABC = "101") else
         "1011111" when (ABC = "110") else
         "1110000" when (ABC = "111");
end architecture;