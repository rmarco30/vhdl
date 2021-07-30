-- Variables are good for creating algorithms within a process, 
-- but they are not accessible to the outside world.
-- Communicating outside of a process a variable is not viable anymore. 
entity Experiment3A is
end entity;
 
-- Signals are declared between the architecture <architecture_name> of <entity_name> is 
-- line and the begin statements in the VHDL file. 
-- This is called the declarative part of the architecture.
architecture sim of Experiment3A is
    -- A signal of type integer unlike a variable, 
    -- a signal is available to every process within the architecture.
    signal MySignal : integer := 0;
 
begin
    process is
        variable MyVariable : integer := 0;
    begin
 
        report "*** Process begin ***";
 
        MyVariable := MyVariable + 1;
        MySignal   <= MySignal + 1;
 
        report "MyVariable=" & integer'image(MyVariable) &
               ", MySignal=" & integer'image(MySignal);
 
        wait for 10 ns;
 
    end process;
end architecture;