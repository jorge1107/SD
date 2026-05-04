entity Mux2x1LogicGates is
   port(
		i0, i1, s0: in bit;
      d : out bit
   );
end Mux2x1LogicGates;

architecture behav of Mux2x1LogicGates is
	begin
		d <= (((not s0) and (i1)) or ((s0) and (i1)));
end architecture behav;