library IEEE;
use IEEE.std_logic_1164.all;

entity Experiment9C is
    port (Clock, Reset : in std_logic;
          Din          : in std_logic;
          ERR          : out std_logic);
end entity;

architecture sim of Experiment9C is
    type State_type is (Start, D0_is_1, D1_is_1, D0_not_1, D1_not_1);
    signal current_state, next_state : State_type;
    
begin
    
    STATE_MEMORY : process (Clock, Reset)
    begin
        if (Reset = '0') then
            current_state <=  Start;
        elsif (Clock'event and Clock = '1') then
            current_state <= next_state;
        end if;
    end process;
    
    NEXT_STATE_LOGIC : process (current_state, Din)
    begin
        case (current_state) is
            when Start =>   if (Din = '1') then
                                next_state <= D0_is_1;
                            else
                                next_state <= D0_not_1;
                            end if;
            when D0_is_1 => if (Din = '1') then
                                next_state <= D1_is_1;
                            else
                                next_state <= D1_not_1;
                            end if;
            when D1_is_1  => next_state <= Start;
            when D0_not_1 => next_state <= D1_not_1;
            when D1_not_1 => next_state <= Start;
            when others   => next_state <= Start;
        end case;
    end process;
    
    OUTPUT_LOGIC : process (current_state, Din)
    begin
        case (current_state) is
            when D1_is_1 => if (Din = '1') then
                                ERR <= '1';
                            else
                                ERR <= '0';
                            end if;
            when others  => ERR <= '-';
        end case;
    end process;
    
end architecture;
