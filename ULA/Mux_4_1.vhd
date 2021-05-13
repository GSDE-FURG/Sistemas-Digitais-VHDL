library ieee;
use ieee.std_logic_1164.all;
 
entity Mux_4_1 is
  port (
    Seletor : in  std_logic_vector(1 downto 0);
    Entrada1  : in  std_logic;
    Entrada2  : in  std_logic;
    Entrada3  : in  std_logic;
    Entrada4  : in  std_logic;
    Saida   : out std_logic
    );
end entity Mux_4_1;
 
architecture RTL of Mux_4_1 is
 begin

  p_Mux: process (Seletor, Entrada1, Entrada2, Entrada3, Entrada4) is
  begin
    case Seletor is
      when "00" =>
        Saida <= Entrada1;
      when "01" =>
        Saida <= Entrada2;
      when "10" =>
        Saida <= Entrada3;
      when others =>
        Saida <= Entrada4;
    end case;
  end process p_Mux;
   
end architecture RTL;