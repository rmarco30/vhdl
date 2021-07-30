entity Laboratory4B is
    port(A, B, C, D 	: in bit;
         F       	: out bit);
end entity;

architecture sim of Laboratory4B is 
begin
    F <= '1' when (A = '0' and B = '0' and C = '0' and D = '0') else
         '1' when (A = '0' and B = '0' and C = '0' and D = '1') else
         '1' when (A = '0' and B = '0' and C = '1' and D = '0') else
         '0' when (A = '0' and B = '0' and C = '1' and D = '1') else
	
	 '1' when (A = '0' and B = '1' and C = '0' and D = '0') else
         '1' when (A = '0' and B = '1' and C = '0' and D = '1') else
         '1' when (A = '0' and B = '1' and C = '1' and D = '0') else
         '0' when (A = '0' and B = '1' and C = '1' and D = '1') else

	 '1' when (A = '1' and B = '0' and C = '0' and D = '0') else
         '1' when (A = '1' and B = '0' and C = '0' and D = '1') else
         '1' when (A = '1' and B = '0' and C = '1' and D = '0') else
         '0' when (A = '1' and B = '0' and C = '1' and D = '1') else

	 '1' when (A = '1' and B = '1' and C = '0' and D = '0') else
         '1' when (A = '1' and B = '1' and C = '0' and D = '1') else
         '1' when (A = '1' and B = '1' and C = '1' and D = '0') else
         '0' when (A = '1' and B = '1' and C = '1' and D = '1');

end architecture;