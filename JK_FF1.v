module JK_FF1(
output reg q,
input j,k,clk
);

always@ (posedge clk)
begin
if(j==1'b0 & k==1'b0)
begin q=q; end
if(j==1'b0 & k==1'b1) 
begin q=1'b0; end
if(j==1'b1 & k==1'b0)
begin q=1'b1; end
if(j==1'b1 & k==1'b1) 
begin q=~q; end
end

endmodule