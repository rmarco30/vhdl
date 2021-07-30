entity Experiment4A is
end entity;
 
architecture sim of Experiment4A is
    signal CountUp   : integer := 0;
    signal CountDown : integer := 10;
 
begin
    process is

    begin
        CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;
        wait for 10 ns;
    end process;
 
    -- Process triggered using Wait On
    process is

    begin
        if CountUp = CountDown then
            report "Process A: Trigger!";
        end if;
        wait on CountUp, CountDown;
    end process;

    process(CountUp, CountDown) is

    begin
        if CountUp = CountDown then
            report "Process B: Trigger!";
        end if;
    end process;
end architecture;