entity Experiment3B is
end entity;	
 
architecture sim of Experiment3B is
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
 
        MyVariable := MyVariable + 1;
        MySignal   <= MySignal + 1;
 
        report "MyVariable=" & integer'image(MyVariable) &
               ", MySignal=" & integer'image(MySignal);
 
        wait for 10 ns;

    end process;
end architecture;

