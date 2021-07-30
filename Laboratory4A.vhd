entity Laboratory4A is
    port(A, B, C, D 	: in bit;
         F       	    : out bit);
end entity;

architecture sim of Laboratory4A is 
begin


    F <= (not C) or (not D);

end architecture; 
