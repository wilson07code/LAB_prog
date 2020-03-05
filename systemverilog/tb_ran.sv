module ran_tb();
logic [3:0]i;
logic [1:0]sel;
logic y;
mux4_to_1 m1(.*);

initial 
begin
$monitor($time,"{i,sel}=%d,y=%d",{i,sel},y);

/*repeat(64)
#5 {i,sel}=$random();*/

 repeat(16)
#5 {i,sel}=$random_range(15);

repeat(16)
#5 {i,sel}=$urandom_range(16,31);

repeat(16)
#5 {i,sel}=$urandom_range(32,47);

repeat(16)
#5 {i,sel}=$urandom_range(48,63);
end
endmodule