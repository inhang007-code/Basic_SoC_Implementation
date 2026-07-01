module tb_comparator;
//stimulus signal
reg [31:0]	i_a;
reg [31:0]	i_b;

//monitoring signal
wire	o_greater	;
wire	o_equal		;
wire	o_less		;	
//DUT instantiation
comparator dut (
	.i_a		(i_a      )		,
	.i_b		(i_b      )		,
	.o_greater	(o_greater)		,
	.o_equal	(o_equal  )		,
	.o_less		(o_less   )		
);
initial begin
// system task for monitoring
   $monitor("%0t\t %d\t %d\t %b\t %b\t %b", $time, i_a, i_b, o_greater,
   o_equal, o_less);
 
// apply stimulus
   i_a = 32'd0;  i_b = 32'd0; #10; 
   i_a = 32'd10; i_b = 32'd11; #10; 
   i_a = 32'd20; i_b = 32'd20; #10; 
   i_a = 32'd30; i_b = 32'd11; #10; 
   i_a = 32'd40; i_b = 32'd40; #10; 
   i_a = 32'd50; i_b = 32'd51; #10; 
   i_a = 32'd60; i_b = 32'd110; #10; 
   i_a = 32'd70; i_b = 32'd70; #10; 
 
 // finish simulation
    #10 $finish;
    end
endmodule
