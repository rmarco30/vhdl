library IEEE;
use IEEE.std_logic_1164.all;

entity myComponent2 is
	port (ABC : in std_logic_vector(2 downto 0);
	      F   : out std_logic);
end entity;

architecture sim of myComponent2 is
begin
	myComponent2_Process : process (ABC)
	begin
		case (ABC) is
			when "000" | "010" | "110" => F <= '1';
			when others                => F <= '0';
		end case;
	end process;
end architecture;