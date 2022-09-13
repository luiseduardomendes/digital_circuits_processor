LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY memoria2 IS
	PORT(
		entrada: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		saida: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END memoria2;

ARCHITECTURE circ1 OF memoria2 IS
BEGIN
	WITH entrada SELECT
				   --	saida			 entrada
		saida <=	
					
					"00000000" WHEN OTHERS;
END circ1; 