library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ULA_4bits is
 Port ( 
	A : in signed(3 downto 0);
	B : in signed(3 downto 0);
	Seletor : in STD_LOGIC_VECTOR (2 downto 0);
	Saida : out signed(3 downto 0));
end ULA_4bits;

architecture Behavioral of ULA_4bits is
	begin
		process(A, B, Seletor) 
	begin
	case Seletor is
	 
	 when "000" => 
		Saida<= A + B; -- addition 
	 
	 when "001" => 
		Saida<= A + (B + 1); -- – subtraction 
	 
	 when "010" => 
		Saida<= A - 1; -- – sub 1 
	 
	 when "011" => 
		Saida<= A + 1; -- – add 1 
	 
	 when others =>
	 NULL;
	end case; 
 
end process; 

end Behavioral;