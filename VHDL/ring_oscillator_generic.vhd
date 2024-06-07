library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- OK so I lied a little bit this isn't a generic file, but it still gets the job done.

entity ring_oscillator_generic is

	generic(
		
		stages : integer := 31
		
	);
	
	port(
		enable : in std_logic;
		output : buffer std_logic;	
		w		 : buffer std_logic_vector(30 downto 0) := (others => '0')
	);
	
end entity ring_oscillator_generic;

architecture ring_oscillator_generic_arch of ring_oscillator_generic is

	attribute syn_keep : boolean;	
	attribute syn_keep of w : signal is true;
		
	
begin

		process(enable)
		begin
		
		if enable = '1' then
		
			for i in 0 to stages - 2 loop
			
				w(i+1) <= not w(i) after (10 + i) * 1 ns;
				
			end loop;
			
			w(0) <= not w(stages - 1);
			
		else
		
			w <= (others => '0');
			
		end if;
		
	end process;
	
end architecture ring_oscillator_generic_arch;