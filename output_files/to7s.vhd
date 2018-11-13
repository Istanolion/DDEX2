library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity to7s is
    Port ( cont : in  integer;
           salida : out  std_logic);
end to7s;

architecture Behavioral of to7s is
signal count integer range 0 to 8;
constant valor0 : std_logic_vector (7 downto 0):="00111111";
constant valor1 : std_logic_vector (7 downto 0):="00000110";
constant valor2 : std_logic_vector (7 downto 0):="01011011"; 
constant valor3 : std_logic_vector (7 downto 0):="01001111"; 
constant valor4 : std_logic_vector (7 downto 0):="01100110";
constant valor5 : std_logic_vector (7 downto 0):="01101101";
constant valor6 : std_logic_vector (7 downto 0):="01111101";
constant valor7 : std_logic_vector (7 downto 0):="00000111";
constant valor8 : std_logic_vector (7 downto 0):="01111111";
constant valor9 : std_logic_vector (7 downto 0):="01101111";
constant valor10 : std_logic_vector (7 downto 0):="01011111";
constant valor11 : std_logic_vector (7 downto 0):="01111110";
constant valor12 : std_logic_vector (7 downto 0):="01001111";
constant valor13 : std_logic_vector (7 downto 0):="00111100";
constant valor14 : std_logic_vector (7 downto 0):="01011110";
constant valor15 : std_logic_vector (7 downto 0):="01110001";
begin
	process (cont)
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