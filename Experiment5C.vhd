entity Experiment5C is 
    port (A, B : in bit_vector(3 downto 0);
          Sum  : out bit_vector(3 downto 0);
          cOut : out bit);
end entity;

architecture sim of Experiment5C is

    component full_adder 
        port (A, B, cIn : in bit;
              sum, cOut : out bit);
    end component;
    
    signal C1, C2, C3 : bit;
    
    begin
    
        A0 : full_adder port map (A(0), B(0), '0', Sum(0), C1);
        A1 : full_adder port map (A(1), B(1), C1,  Sum(1), C2);
        A2 : full_adder port map (A(2), B(2), C2,  Sum(2), C3);
        A3 : full_adder port map (A(3), B(3), C3,  Sum(3), Cout);
    
end architecture;
