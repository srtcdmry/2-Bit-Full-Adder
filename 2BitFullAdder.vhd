-- 2 bit full adder

library ieee ;
use ieee.std_logic_1164.all ;

entity TwoBit is
	port (
		X : in std_logic_vector ( 1 downto 0);
		Y : in std_logic_vector ( 1 downto 0 );
		S : out std_logic_vector (1 downto 0 ) ;
		Cin : in std_logic );

end TwoBit ;

architecture Behavioral of TwoBit is 
	signal Cout: std_logic_vector (1 downto 0) := "00" ;

	begin
S(0) <= X(0) XOR Y(0) XOR Cin ;
Cout (0) <= (X(0) AND Y(0)) OR (Cin AND X(0)) OR (Cin AND Y(0));
S(1) <= X(1) XOR Y(1) XOR Cout(0) ;
Cout(1) <= (X(1) AND Y(1)) OR (Cout(0) AND X(1)) OR (Cout(0) AND Y(1)) ; 

end Behavioral ;
