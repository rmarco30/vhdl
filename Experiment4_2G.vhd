entity Experiment4_2G is
    port(A       : in bit;
         Sel     : in bit_vector(1 downto 0);
         W,X,Y,Z : out bit);
end entity;

architecture sim of Experiment4_2G is 
begin
    W <= A when (Sel = "00") else '0';
    X <= A when (Sel = "01") else '0';
    Y <= A when (Sel = "10") else '0';
    Z <= A when (Sel = "11") else '0';
end architecture;