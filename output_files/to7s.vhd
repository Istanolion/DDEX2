library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity to7s is
    Port ( cont : in  integer;
			  entrada: in std_logic;
			  seguira : in std_logic;
           out7 : out  std_logic);
end to7s;

architecture Behavioral of to7s is
signal temp : integer range 0 to 16;
signal salida :std_logic;
signal count : integer range 0 to 8:=0;
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
constant valor11 : std_logic_vector (7 downto 0):="01111100";
constant valor12 : std_logic_vector (7 downto 0):="00111001";
constant valor13 : std_logic_vector (7 downto 0):="01011110";
constant valor14 : std_logic_vector (7 downto 0):="01111001";
constant valor15 : std_logic_vector (7 downto 0):="01110001";
begin
	process (cont,entrada,salida, temp, seguira)
	begin
		if seguira='0' then
			if falling_edge (entrada) then 
				if cont=0  then
					salida<=valor0(count);
					count<=count+1;
				elsif cont=1  then
					salida<=valor1(count);
					count<=count+1;
				elsif cont=2  then
					salida<=valor2(count);
					count<=count+1;
				elsif cont=3  then
					salida<=valor3(count);
					count<=count+1;
				elsif cont=4  then
					salida<=valor4(count);
					count<=count+1;
				elsif cont=5  then
					salida<=valor5(count);
					count<=count+1;
				elsif cont=6  then
					salida<=valor6(count);
					count<=count+1;
				elsif cont=7  then
					salida<=valor7(count);
					count<=count+1;
				elsif cont=8  then
					salida<=valor8(count);
					count<=count+1;
				elsif cont=9  then
					salida<=valor9(count);
					count<=count+1;
				elsif cont=10  then
					salida<=valor10(count);
					count<=count+1;
				elsif cont=11  then
					salida<=valor11(count);
					count<=count+1;
				elsif cont=12  then
					salida<=valor12(count);
					count<=count+1;
				elsif cont=13  then
					salida<=valor13(count);
					count<=count+1;
				elsif cont=14 then
					salida<=valor14(count);
					count<=count+1;
				elsif cont=15  then
					salida<=valor15(count);
					count<=count+1;
				end if;	
			end if;
		else 
			count<=0;
		end if;
	end process;
	out7<=salida;
end Behavioral;