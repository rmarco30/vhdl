entity half_adder is
	port(A, B		: in bit;
		sum, cOut	: out bit);
end entity;

architecture sim of half_adder is

	begin

		sum  <= A xor B after 1 ns;
		cOut <= A and B after 1 ns;

	end architecture;