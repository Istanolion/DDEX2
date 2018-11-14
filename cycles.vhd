library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity cycles is
    Port ( entrada : in  STD_LOGIC;
				reactivar: in std_logic;
           salida : out  std_logic);
end cycles;

architecture Behavioral of cycles is
constant max_count: INTEGER := 10;
signal count: INTEGER range 0 to max_count;
begin
	process (entrada, count)
	begin
	if count<max_count then	
		salida<=entrada;
		if falling_edge (entrada) then
			count<= count+1;
		end if;
	else
		salida<='0';
	end if;
	if reactivar='1' then
		count<=0;
	end if;
	end process;
end Behavioral;