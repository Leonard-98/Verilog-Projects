module counter4b
	(
	input en,rst,clk,
	output reg  [3:0] val
	);
	always@(posedge clk)
	begin
	if(en==1)
	 begin
		if(rst==1) val<=0;
		else val<=val+1;
	end
	end
	endmodule
	
	