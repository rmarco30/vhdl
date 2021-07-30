library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment9B is
    port (Clock, Reset       : in std_logic;
          Press              : in std_logic;
          Open_CW, Close_CCW : out std_logic);
end entity;

architecture sim of Experiment9B is
    subtype State_Type is std_logic;
    constant w_open : State_Type := '0';
    constant w_closed : State_Type := '1';
    signal current_state, next_state : State_Type;

begin

    STATE_MEMORY : process (Clock, Reset)
    begin
        if (Reset = '0') then
            current_state <= w_closed;
        elsif (Clock'event and Clock = '1') then
            current_state <= next_state;
        end if;
    end process;
    
    NEXT_STATE_LOGIC : process (current_state, Press)
begin
    case (current_state) is
        when w_closed => if (Press = '1') then
            next_state <= w_open;
        else
            next_state <= w_closed;
        end if;
        when w_open => if (Press = '1') then
            next_state <= w_closed;
        else
            next_state <= w_open;
        end if;
        when others => next_state <= w_closed;
    end case;
end process;

OUTPUT_LOGIC : process (current_state, Press)
begin
    case (current_state) is
        when w_closed => if (Press = '1') then
            Open_CW <= '1'; 
            Close_CCW <= '0';
        else
            Open_CW <= '0'; 
            Close_CCW <= '0';
        end if;
        when w_open => if (Press = '1') then
            Open_CW <= '0';
            Close_CCW <= '1';
        else
            Open_CW <= '0'; 
            Close_CCW <= '0';
        end if;
        when others => Open_CW <= '0'; 
            Close_CCW <= '0';
    end case;
end process;

end architecture;
