entity AND3 is
	port (A, B, C 	: in bit;
		  F 		: out bit);
end entity;

architecture sim of AND3 is

	begin

		F <= (A and B) and C;

end architecture;