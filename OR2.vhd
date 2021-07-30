entity OR2 is
	port (A, B  	: in bit;
		  F 		: out bit);
end entity;

architecture sim of OR2 is

	begin

		F <= A or B;

end architecture;