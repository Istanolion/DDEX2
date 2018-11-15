library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity cycles is
    Port ( entrada : in  STD_LOGIC;
				reactivar: in std_logic;
           salida : out  std_logic);
end cycles;

architecture Behavioral of cycles is
signal primero: std_logic:='1';
constant max_counter: INTEGER := 11;
signal counter: INTEGER range 1 to max_counter;
constant max_count: INTEGER := 10;
signal count: INTEGER range 0 to max_count;
begin
	process (entrada, count,counter,primero)
	begin
	if primero='1' then
		if count<max_count then	
			salida<=entrada;
			if falling_edge (entrada) then
				count<= count+1;
			end if;
		else
			salida<='0';
			primero<='0';
		end if;
	else
		if counter<max_counter then	
			salida<=entrada;
			if falling_edge (entrada) then
				counter<= counter+1;
			end if;
		else
			salida<='0';
		end if;
	end if;
	if reactivar='1' then
		count<=0;
		counter<=1;
	end if;
	end process;
end Behavioral;