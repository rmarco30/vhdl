entity Experiment4_2F is
    port(A,B,C,D : in bit;
         Sel     : in bit_vector(1 downto 0);
         F       : out bit);
end entity;

architecture sim of Experiment4_2F is 
begin
    F <= A when (Sel = "00") else 
         B when (Sel = "01") else
         C when (Sel = "10") else
         D when (Sel = "11");
end architecture;    
