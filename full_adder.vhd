entity full_adder is
	port(A, B, cIn	: in bit;
		sum, cOut	: out bit);
end entity;

architecture sim of full_adder is

	component half_adder
		port(A, B 		: in bit;
			sum, cOut 	: out bit);
	end component;

	signal HA1_Sum, HA1_Cout, HA2_Cout : bit;

	begin

		HA1 : half_adder port map(A, B, HA1_Sum, HA1_Cout);
		HA2 : half_adder port map(HA1_Sum, cIn, sum, HA2_Cout);

		cOut <= HA1_Cout or HA2_Cout after 1 ns;

	end architecture;