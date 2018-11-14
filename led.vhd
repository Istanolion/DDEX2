library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity led is
    Port ( entrada : in  STD_LOGIC;
           salida : out  Integer);
end led;

architecture Behavioral of led is
constant max_count: INTEGER := 16;
signal count: INTEGER range 0 to max_count;
begin
	process (entrada, count)
	begin
	if entrada'event and entrada='1' then
			if count < max_count then 
				count <= count+1;
			else
				count <= 0;
			end if;
		end if;
	salida<=count;
	end process;

end Behavioral;