entity Laboratory3A is
end entity;
 
architecture sim of Laboratory3A is
 
    signal num   : integer := 0;
    signal flag  : integer := 0;
 
begin

-- process for count up or count down
    process is
    begin

       case flag is
         when 0 =>
           num <= num + 1;
   	   wait for 1 ns;
    	 when 1 =>
           num <= num - 1;
	   wait for 1 ns;
         when others =>
           report "default case";
       end case;

    end process;


-- report current value of count
    process is
    begin
        
        report "Count = " & integer'image(num);
	wait on num;

    end process;


-- toggle the flag
    process is
    begin

	wait until num = 0 or num = 15;
	
        if flag = 0 then
	  flag <= 1;
	elsif flag = 1 then
	  flag <= 0;
	else
	  -- do nothing
	end if;

    end process;

end architecture;
