/*
:name: binary_op_gt
:description: > operator test
:should_fail: 0
:tags: 11.4.4
*/
module top();
int a = 12;
int b = 5;
int c;
initial begin
    c = a > b;
end
endmodule