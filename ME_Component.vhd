library IEEE;
use IEEE.std_logic_1164.all;

entity ME_Component is
	port (ABCD : in std_logic_vector(3 downto 0);
	      F   : out std_logic);
end entity;

architecture sim of ME_Component is
begin
	ME_Component_Process : process (ABCD)
	begin

		case (ABCD) is
			when "0000" => F <= '1';
			when "0001" => F <= '0';
			when "0010" => F <= '1';
			when "0011" => F <= '1';

			when "0100" => F <= '1';
			when "0101" => F <= '1';
			when "0110" => F <= '1';
			when "0111" => F <= '1';

			when "1000" => F <= '1';
			when "1001" => F <= '0';
			when "1010" => F <= '1';
			when "1011" => F <= '0';

			when "1100" => F <= '1';
			when "1101" => F <= '0';
			when "1110" => F <= '1';
			when "1111" => F <= '1';

			when others => F <= '0';
			
		end case;

	end process;
end architecture;