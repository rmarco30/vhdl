library IEEE;
use IEEE.std_logic_1164.all;

entity lab7A_component is
		port (A, B, C, D : in std_logic;
			  F		     : out std_logic);
end entity;

architecture sim of lab7A_component is 
	
	begin
		
		F <= (not B) and D;
		
end architecture;