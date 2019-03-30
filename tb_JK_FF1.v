module tb_JK_FF1;
	reg j,k,clk;
	wire q;
	
	JK_FF1 JK_FF1(
	.j(j),
	.k(k),
	.clk(clk),
	.q(q)
	);
	
	initial begin
	clk=1'b1;
	forever #10 clk=~clk;
	end
	
	initial begin
	#20;
	j=0;
	k=0;
	
	#20;
	j=0;
	k=1;
	
	#20;
	j=1;
	k=0;
	
	#20;
	j=1;
	k=1;
	end
	
	
endmodule
