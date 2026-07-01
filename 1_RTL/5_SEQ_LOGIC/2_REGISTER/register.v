`timescale 1ns/1ps

module register(
	//port list
	rst_n		,
	clk		,
	i_in1		,
	i_in2		,
	o_out1		,
	o_out2
);
//port declaration
input		rst_n		;
input		clk		;
input		i_in1		;
input	[3:0]	i_in2		;
output		o_out1		;
output	[3:0]	o_out2		;

//behavioral modeling : 1-bit register
reg	o_out1					;	
always @(posedge clk or negedge rst_n)
begin
	if(~rst_n) 	o_out1 <= 1'b0		;
	else 		o_out1 <= i_in1		;
end

//behavioral modeling : 4-bit register
reg	[3:0]	o_out2				;
always @(posedge clk or negedge rst_n)
begin
	if(~rst_n)	o_out2 <= 4'b0		;
	else		o_out2 <= i_in2		;
end

endmodule
