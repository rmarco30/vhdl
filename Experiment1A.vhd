-- Experiment1A is the same as the <filename>.vhd. 
-- The entity part is where the inputs and outputs are defined. 
-- Since there are no inputs and outputs to this program, the entity is left blank
entity Experiment1A is
-- closing the entity Experiment1A
-- in VHDL the lines and spaces are treated equally 
-- that's why semicolon was used to mark the end of the code line.
end entity;
-- architecture is the next section of the VHDL file 
-- which means that this is the architecture of the Experiment1A entity name. 
-- All the logic and algorithm was written in the architecture. 
-- Also, here in the architecture part, you can define processes. 
-- This is where you place most of your codes.
architecture sim of Experiment1A is
begin
-- treat the process as a program thread.
-- indicates the function inside the architecture which is starting after begin
-- the content of the process will be executed
-- sequentially one line at a time from top to bottom
    process is
    begin
    
        report "Hello World!";
        wait;
    
    end process;

end architecture;
