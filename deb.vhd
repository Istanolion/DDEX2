library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity deb is
port (
	led: 	in STD_LOGIC;
	sign:		out STD_LOGIC
);
end deb;

architecture rtl of deb is
	constant max_count: INTEGER := 1000;
	signal count: INTEGER range 0 to max_count;
	signal led_state: STD_LOGIC := '0';
	
begin
	gen_clock: process(led, led_state, count)
	begin
		if led='1' then
			if count < max_count then 
				count <= count+1;
			else
				led_state <= not led_state;
				count <= 0;
			end if;
		else
			count<=0;
		end if;
	end process;
	
	persecond: process (led_state)
	begin
		sign <= led_state;
	end process;
	
end rtl;