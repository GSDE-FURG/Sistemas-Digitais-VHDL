library ieee;
use ieee.std_logic_1164.all;
 
entity test_bench_Porta_And is
end test_bench_Porta_And;
 
architecture funcionamento_test_bench of test_bench_Porta_And is
  
  signal a_tb   : std_logic := '0';
  signal b_tb   : std_logic := '0';
  signal x_tb   : std_logic;
   
  component Porta_And is  -- busca componente Porta_And em Porta_And.vhd
    port (
      a    : in  std_logic;
      b    : in  std_logic;
      y : out std_logic
      );
  end component Porta_And;
   
begin
   
  and_gate_INST : Porta_And
    port map (
      a   => a_tb,
      b   => b_tb,
      y   => x_tb
      );
 
  process is
  begin
    a_tb <= '0';
    b_tb <= '0';
    wait for 10 ns;
    a_tb <= '0';
    b_tb <= '1';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '0';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '1';
    wait for 10 ns;    
  end process;
     
end funcionamento_test_bench;