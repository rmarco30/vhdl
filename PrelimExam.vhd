entity PrelimExam is
    port(A,B,C,D : in bit;
         F       : out bit);
end entity;

architecture sim of PrelimExam is 
begin
    F <= (A or D) and (not A or B) and (not C or D);
end architecture;    
