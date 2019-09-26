/*
:name: binary_op_wild_eq
:description: ==? operator test
:should_fail: 0
:tags: 11.4.6
*/
module top();
int a = 12;
int b = 5;
int c;
initial begin
    c = a ==? b;
end
endmodule