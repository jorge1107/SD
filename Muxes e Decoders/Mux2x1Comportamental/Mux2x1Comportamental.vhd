entity Mux2x1Comportamental is
	port(i0, i1, s0 : in bit; d : out bit);
end Mux2x1Comportamental;

architecture behav of Mux2x1Comportamental is
	begin
	with s0 select
		d <= i0 when '0',
			  i1 when '1';
end architecture behav;