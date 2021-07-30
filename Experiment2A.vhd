entity Experiment2A is
end entity;
 
architecture sim of Experiment2A is
begin
 
    process is
    begin
  
        report "Before loop!";
        -- the keyword 'loop' indicates the start of the loop
        -- whatever code is inside the loop body will continue to execute indefinitely 
        loop
            report "Inside of loop!";
            wait for 10 ns;
        -- the keyword 'end loop' indicates the end of the loop
        end loop;
         
        report "End of loop!";
        wait;
         
    end process;
 
end architecture;
