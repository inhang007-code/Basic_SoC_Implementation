`timescale 1ns / 1ps

module tb_pipeline;
	reg clk;
	reg rst_n;
	reg [9:0] in_a;
	reg [9:0] in_b;
	reg [9:0] in_c;
	wire [11:0] out;

	pipeline dut(
	.clk(clk),
	.rst_n(rst_n),
	.in_a(in_a),
	.in_b(in_b),
	.in_c(in_c),
	.out(out)
	);

initial begin
	clk <= 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	rst_n = 1'b0;
	in_a = 10'd0;
	in_b = 10'd0;
	in_c = 10'd0;

	#20;
	rst_n = 1'b1;

	#20;
	in_a = 10'd10;
	in_b = 10'd20;
	in_c = 10'd30;

	#20;
	in_a = 10'd100;
	in_b = 10'd200;
	in_c = 10'd300;

	#20;
	in_a = 10'd500;
	in_b = 10'd600;
	in_c = 10'd700;

	#50;
	$finish;
end

initial begin
	$dumpfile("./pipeline.vcd") ;
	$dumpvars(0, dut)	    ;
end

endmodule
