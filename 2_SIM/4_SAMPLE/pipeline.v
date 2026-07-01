`timescale 1ns / 1ps

module pipeline(
	input wire clk,
	input wire rst_n,
	input wire [9:0] in_a,
	input wire [9:0] in_b,
	input wire [9:0] in_c,
	output reg [11:0] out	
);

reg[10:0] temp_ab;
reg[9:0] temp_c;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		temp_ab <= 11'd0;
		temp_c <= 10'd0;
	end
	else begin
		temp_ab <= {1'b0, in_a} + {1'b0, in_b};
		temp_c <= in_c;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		out <= 12'd0;
	end
	else begin
		out <= {1'b0, temp_ab} + {2'b00, temp_c};
	end
end 

endmodule
