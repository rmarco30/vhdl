entity Laboratory2A is
end entity;
 
architecture sim of Laboratory2A is
begin

    process is

	variable A : bit;
	variable B : bit;
	variable C : bit;
	variable i : integer := 0;

    begin
	
	while 1 = 1 loop

	A := '0';
	B := '0';

	report "bit A is " & bit'image(A) & ", bit B is " & bit'image(B);
	
	C := A and B;
	report "A and B is " & bit'image(C);
	C := A or B;
	report "A or B is " & bit'image(C);
	C := A nand B;
	report "A nand B is " & bit'image(C);
	C := A nor B;
	report "A nor B is " & bit'image(C);
	C := A xor B;
	report "A xor B is " & bit'image(C);
	C := A xnor B;
	report "A xnor B is " & bit'image(C);

	for i in 0 to 3 loop
	report "Toggling bit A in " & integer'image(3-i);
	wait for 100 ns;
	end loop;
	
	A := not A; -- 1
	B := B;	    -- 0
	
	report "bit A is " & bit'image(A) & ", bit B is " & bit'image(B);

	C := A and B;
	report "A and B is " & bit'image(C);
	C := A or B;
	report "A or B is " & bit'image(C);
	C := A nand B;
	report "A nand B is " & bit'image(C);
	C := A nor B;
	report "A nor B is " & bit'image(C);
	C := A xor B;
	report "A xor B is " & bit'image(C);
	C := A xnor B;
	report "A xnor B is " & bit'image(C);

	for i in 0 to 3 loop
	report "Toggling bit A and B in " & integer'image(3-i);
	wait for 100 ns;
	end loop;

	A := not A;  -- 0
	B := not B;  -- 1
	
	report "bit A is " & bit'image(A) & ", bit B is " & bit'image(B);

	C := A and B;
	report "A and B is " & bit'image(C);
	C := A or B;
	report "A or B is " & bit'image(C);
	C := A nand B;
	report "A nand B is " & bit'image(C);
	C := A nor B;
	report "A nor B is " & bit'image(C);
	C := A xor B;
	report "A xor B is " & bit'image(C);
	C := A xnor B;
	report "A xnor B is " & bit'image(C);

	for i in 0 to 3 loop
	report "Toggling bit A in " & integer'image(3-i);
	wait for 100 ns;
	end loop;

	A := not A;  -- 1
	B := B;      -- 1

	report "bit A is " & bit'image(A) & ", bit B is " & bit'image(B);

	C := A and B;
	report "A and B is " & bit'image(C);
	C := A or B;
	report "A or B is " & bit'image(C);
	C := A nand B;
	report "A nand B is " & bit'image(C);
	C := A nor B;
	report "A nor B is " & bit'image(C);
	C := A xor B;
	report "A xor B is " & bit'image(C);
	C := A xnor B;
	report "A xnor B is " & bit'image(C);

	for i in 0 to 3 loop
	report "Resetting in " & integer'image(3-i);
	wait for 100 ns;
	end loop;
	
	end loop;
        wait;
 
    end process;
 
end architecture;
