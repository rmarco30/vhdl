entity AND2 is
	port (A, B  	: in bit;
		  F 		: out bit);
end entity;

architecture sim of AND2 is

	begin

		F <= A and B;

end architecture;