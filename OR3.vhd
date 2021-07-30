entity OR3 is
	port (A, B, C 	: in bit;
		  F 		: out bit);
end entity;

architecture sim of OR3 is

	begin

		F <= (A or B) or C;

end architecture;