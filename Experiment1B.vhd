Entity Experiment1B is
end entity;
 
architecture sim of Experiment1B is
begin
 
    process is
    begin
        -- This is the start of the process "thread"
        report "Hello, World!";
        -- wait for statement is used to delay the program for any amount of time.
        -- syntax wait for <time_value> <time_unit>
        -- fs   femtoseconds
        -- ps   picoseconds
        -- ns   nanoseconds
        -- us   microseconds
        -- ms   milliseconds
        -- sec  seconds
        -- min  minutes
        -- hr   hours
        wait for 10 ns;
    
        -- The process will loop back to the start from here
    end process;
 
end architecture;

