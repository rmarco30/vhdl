entity Experiment2C is
end entity;
 
architecture sim of Experiment2C is
begin
 
    process is
    begin
        -- The for-loop allows you to iterate over a fixed range of integers or enumerated items. 
        -- The item belonging to the current iteration will be available within the loop 
        -- through an implicitly declared constant.
        
        --  The syntax of the for-poop is:
        --  for <const> in <range> loop
        --  <body>
        --  end loop;
        -- The <const> is an arbitrary name for a constant that will available inside of the loop. 
        -- The <range> is a range of integers or enumerated values which the loop will iterate over. 
        -- An integer range can be either incrementing or decrementing.
        -- The VHDL code for an incrementing range including all 10 numbers from 0 to 9: 0 to 9
        -- The VHDL code for a decrementing range including all 10 numbers from 9 to 0: 9 downto 0
        -- The VHDL code for a range including only the number 0: 0 to 0
        -- The VHDL code for an empty range that doesn?t have any numbers at all: 0 to -1
        for i in 1 to 10 loop
            -- to print out an object in HDL it must be first be converted into string.
            -- i in this statement is an integer and using the integer'image(object) attribute
            -- will convert the integer object into a string.
            -- the ampersand (&) symbol is used to join the two strings together.
            report "i=" & integer'image(i);
        end loop;
        wait;
         
    end process;
 
end architecture;

