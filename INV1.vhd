entity INV1 is
	port (A : in bit;
		  F : out bit);
end entity;

architecture sim of INV1 is

	begin

		F <= not A;

end architecture;