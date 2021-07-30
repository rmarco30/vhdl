library ieee;
use ieee.std_logic_1164.all;
 
entity Experiment4C is
end entity;
 
architecture sim of Experiment4C is
 
    signal SLV1 : std_logic_vector(7 downto 0);
    signal SLV2 : std_logic_vector(7 downto 0) := (others => '0');
    signal SLV3 : std_logic_vector(7 downto 0) := (others => '1');
    signal SLV4 : std_logic_vector(7 downto 0) := x"AA";
    signal SLV5 : std_logic_vector(0 to 7)     := "10101010";
    signal SLV6 : std_logic_vector(7 downto 0) := "00000001";
 
begin
    process is
    
    begin
        wait for 10 ns;
        
        for i in SLV6'left downto SLV6'right + 1 loop
            SLV6(i) <= SLV6(i-1);
        end loop;
 
        SLV6(SLV6'right) <= SLV6(SLV6'left);
 
    end process;
end architecture;
