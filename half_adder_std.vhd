library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder_std is 
	port (A, B      : in std_logic;
	      sum, cOut : out std_logic);
end entity;

architecture sim of half_adder_std is

	begin
	
	sum  <= A xor B after 1 ns;
	cOut <= A and B after 1 ns;
	
end architecture;