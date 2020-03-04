module counter30b
	(
	input en,rst_n,clk,
	output reg [29:0] val
	);
	always@(posedge clk)
	begin
	if(rst_n==0) val<=0;
	 else 
	      begin
		   if(en==1) val<=val+1;
			else val<=val;
	      end
	end
	endmodule
	
	