library IEEE;
use IEEE.std_logic_1164.all;

entity lab7B_component is
		port (myInput	 : in std_logic_vector(3 downto 0);
			  F		     : out std_logic);
end entity;

architecture sim of lab7B_component is 
	
	begin
		
		F <= (not myInput(2)) and myInput(0);
		
end architecture;