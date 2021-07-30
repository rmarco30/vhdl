-- The basic syntax is:
-- 
-- if <condition> then
-- elsif <condition> then
-- else
-- end if;
-- 
-- The elsif and else are optional, and elsif may be used multiple times. 
-- The <condition> can be a boolean true or false, 
-- or it can be an expression which evaluates to true or false.

entity Experiment3E is
end entity;
 
architecture sim of Experiment3E is
 
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
 
        if CountUp > CountDown then
            report "CountUp is larger";
        elsif CountUp < CountDown then
            report "CountDown is larger";
        else
            report "They are equal";
        end if;
 
        wait on CountUp, CountDown;
 
    end process;
 
end architecture;

