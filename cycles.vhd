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
constant max_count2: INTEGER := 11;
signal count2: INTEGER range 1 to max_count2;
constant max_count: INTEGER := 10;
signal count: INTEGER range 0 to max_count;
begin
	process (entrada, count,count2,primero)
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
		if count2<max_count2 then	
			salida<=entrada;
			if falling_edge (entrada) then
				count2<= count2+1;
			end if;
		else
			salida<='0';
		end if;
	end if;
	if reactivar='1' then
		count<=0;
		count2<=1;
	end if;
	end process;
end Behavioral;