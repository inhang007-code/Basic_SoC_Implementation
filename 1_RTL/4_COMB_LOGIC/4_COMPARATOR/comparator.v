`timescale 1ns / 1ps

module comparator(
	//port list
	i_a		,
	i_b		,
	o_equal		,
	o_greater	,
	o_less		
);
//port declaration
input	[31:0]	i_a		;
input	[31:0]	i_b		;	
output		o_equal		;	
output		o_greater	;
output		o_less		;
//modeling
assign o_equal = (i_a==i_b)	;
assign o_greater = (i_a>i_b)	;
assign o_less = (i_a<i_b)	;

endmodule
