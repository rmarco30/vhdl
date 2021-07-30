entity Experiment2B is
end entity;
 
architecture sim of Experiment2B is
begin
 
    process is
    begin
  
        report "Before loop!";
        -- The exit statement can be used for breaking out of any loop.
        loop
            report "Inside of loop!";
            exit;
        end loop;
         
        report "End of loop!";
        wait;
         
    end process;
 
end architecture;

