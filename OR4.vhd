entity OR4 is
	port (A, B, C, D	: in bit;
		  F 			: out bit);
end entity;

architecture sim of OR4 is

	begin

		F <= A or B or C or D;

end architecture;