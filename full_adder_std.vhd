library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_std is 
	port (A, B, cIn : in std_logic;
	      sum, cOut : out std_logic);
end entity;

architecture sim of full_adder_std is

	component half_adder_std 
		port (A, B      : in std_logic;
		      sum, cOut : out std_logic);
	end component;
	
	signal HA1_Sum, HA1_Cout, HA2_Cout : std_logic;	
	begin
		HA1 : half_adder_std port map (A, B, HA1_Sum, HA1_Cout);
		HA2 : half_adder_std port map (HA1_Sum, cIn, sum, HA2_Cout);
		
		cOut <= HA1_Cout or HA2_Cout after 1 ns;
	
end architecture;