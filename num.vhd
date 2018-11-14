library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity num is
    Port ( entrada : in  integer;
           salida : out  std_logic);
end num;

architecture Behavioral of num is
constant max_count: INTEGER := 16;
signal temp: INTEGER range 0 to max_count:=16;
begin
	process (entrada, temp)
	begin
	if entrada=temp then
		salida<='0';
	else
		salida<='1';
		temp<=entrada;
	end if;

	end process;
end Behavioral;