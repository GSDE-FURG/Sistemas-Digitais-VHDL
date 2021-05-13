library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity full_adder is
  port (
    A  : in std_logic;
    B  : in std_logic;
    Cin : in std_logic;
    --
    S   : out std_logic;
    Cout : out std_logic
    );
end full_adder;
 
 
architecture rtl of full_adder is
 
   
begin

  -- Logica combinacional
  S   <= A xor B xor Cin;
  Cout <= ((A xor B) and Cin) or (A and B);
 
 
 
end rtl;