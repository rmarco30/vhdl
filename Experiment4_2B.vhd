entity Experiment4_2B is
    port(A, B, C : in bit;
         F       : out bit);
end entity;

architecture sim of Experiment4_2B is 
begin
    F <= '1' when (A = '0' and B = '0' and C = '0') else
         '1' when (A = '0' and B = '1' and C = '0') else
         '1' when (A = '1' and B = '1' and C = '0') else
         '0';
end architecture;    