library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity digital_clocksec is
port (
	clk12mhz: 	in STD_LOGIC;
	clk:		out STD_LOGIC
);
end digital_clocksec;

architecture rtl of digital_clocksec is
	constant max_count: INTEGER := 6000000;
	signal count: INTEGER range 0 to max_count;
	signal clk_state: STD_LOGIC := '0';
	
begin
	gen_clock: process(clk12mhz, clk_state, count)
	begin
		if clk12mhz'event and clk12mhz='1' then
			if count < max_count then 
				count <= count+1;
			else
				clk_state <= not clk_state;
				count <= 0;
			end if;
		end if;
	end process;
	
	persecond: process (clk_state)
	begin
		clk <= clk_state;
	end process;
	
end rtl;