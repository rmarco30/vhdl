library IEEE;
use IEEE.std_logic_1164.all;

entity Laboratory9 is
    port (Clock, Reset       : in std_logic;
          Din                : in std_logic;
          Dout               : out std_logic);
end entity;

architecture sim of Laboratory9 is
    type State_Type is (Start, Midway, Done);
    signal current_state, next_state : State_Type;

begin

    STATE_MEMORY : process (Clock, Reset)
    begin
        if (Reset = '0') then
            current_state <= Start;
        elsif (Clock'event and Clock = '1') then
            current_state <= next_state;
        end if;
    end process;
    
    NEXT_STATE_LOGIC : process (current_state, Din)
begin
    case (current_state) is

        when Start => if (Din = '1') and (Reset = '0') then
            next_state <= Midway;
        else
            next_state <= Start;
        end if;

        when Midway => next_state <= Done;

        when Done => next_state <= Start;

        when others => next_state <= Start;
    end case;
end process;

OUTPUT_LOGIC : process (current_state, Din)
begin
    case (current_state) is

        when Done => if (Din = '1') then
            Dout <= '1';
        else
            Dout <= '0'; 
        end if;

        when others => Dout <= '0'; 
    end case;
end process;

end architecture;
