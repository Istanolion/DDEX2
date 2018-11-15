library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity led is
    Port ( led : in  STD_LOGIC;
				clk : in std_logic;
           salida : out  Integer);
end led;

architecture Behavioral of led is
constant max_count: INTEGER := 16;
signal bool: std_logic:='1' ;
signal temp: std_logic ;

signal count: INTEGER range 0 to max_count:=0;
begin
	process (led, count,clk,bool,temp)
	begin
		if (clk'event and clk='1' and led='1'and bool='1') then
				if count < max_count then 
					count <= count+1;
					temp<='0';
				else
					count <= 0;
				end if;
		end if;
		if (led='0') then
				temp<='1';
		end if;
		bool<=temp;
		salida<=count;
	end process;

end Behavioral;