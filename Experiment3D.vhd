entity Experiment3D is
end entity;
 
architecture sim of Experiment3D is
 
    signal CountUp   : integer := 0;
    signal CountDown : integer := 10;
 
begin

    process is
    begin
 
        CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;
        wait for 10 ns;
 
    end process;
 
    process is
    begin
        -- The Wait On statement will pause the process 
        -- until one of the specified signals change
        wait on CountUp, CountDown;
        report "CountUp = " & integer'image(CountUp) &
               " CountDown = " & integer'image(CountDown);
 
    end process;
 
    process is
    begin
        -- The Wait Until statement will pause until an event 
        -- causes the condition to become true
        wait until CountUp = CountDown;
        report "Jackpot!";
 
    end process;
 
end architecture;

