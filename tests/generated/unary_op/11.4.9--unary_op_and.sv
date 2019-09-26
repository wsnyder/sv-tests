/*
:name: unary_op_and
:description: & operator test
:should_fail: 0
:tags: 11.4.9
*/
module top();
int a = 12;
int b = 5;
initial begin
    a = &b;
end
endmodule