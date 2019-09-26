/*
:name: binary_op_log_and
:description: && operator test
:should_fail: 0
:tags: 11.4.7
*/
module top();
int a = 12;
int b = 5;
int c;
initial begin
    c = a && b;
end
endmodule