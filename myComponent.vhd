library IEEE;
use IEEE.std_logic_1164.all;

entity myComponent is
		port (A, B, C : in std_logic;
			  F		  : out std_logic);
end entity;

architecture sim of myComponent is 
	signal An, Bn, Cn : std_logic;
	signal m0, m2, m6 : std_logic;
	
	begin
		An <= not A;
		Bn <= not B;
		Cn <= not C;
		
		m0 <= An and Bn and Cn;
		m2 <= An and B  and Cn;
		m6 <= A  and B  and Cn;
		
		F <= m0 or m2 or m6;
		
end architecture;		