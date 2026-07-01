`timescale 1ns/1ps

module tb_register;

//stimulus sig
reg		rst_n		;
reg		clk		;
reg		i_in1		;
reg	[3:0]	i_in2		;
//monitor sig
wire		o_out1		;
wire	[3:0]	o_out2		;

//DUT instantiation
register dut(
	.rst_n		(rst_n	)	,
	.clk		(clk	)	,
	.i_in1		(i_in1	)	,
	.i_in2		(i_in2	)	,
	.o_out1		(o_out1	)	,
	.o_out2		(o_out2	)		
);
//dumpfile gen
initial begin
	$dumpfile("./register.vcd"	)		;
	$dumpvars(0, tb_register	)		;
end


//stimulus scenario
//clkgen
always #5 clk = ~clk		;

//init
initial begin
	rst_n	= 1'b0		; // active low rst
	clk	= 1'b0		;
	i_in1	= 1'b0		;
	i_in2	= 4'b0000	;	

	// rst release
	#1000 rst_n = 1'b1	;
	
	#200 i_in1 = 1'b1	;
	
	#100 i_in2 = 4'b1010	;


	//rst enable
	#500 rst_n = 1'b0	;

	#200 i_in1 = 1'b0	;
	     i_in2 = 4'd0	;

	#300 i_in1 = 1'b1	;
	     i_in2 = 4'b1111	;

	#100 rst_n = 1'b1	;

	#200 $finish;
end


endmodule
