LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY meio_somador IS
	PORT (A,B: IN bit; S,Carry: OUT bit);
END ENTITY;

ARCHITECTURE Comportamento_somador OF meio_somador IS
BEGIN
	S <= A XOR B;
	C <= A AND B;
END ARCHITECTURE;
