/*
:name: local_from_inside
:description: encapsulation test
:should_fail: 0
:tags: 8.18
*/
module top();
class a_cls;
    local int a_loc = 21;
    protected int a_prot = 22;
    int a = 23;
endclass
class b_cls extends a_cls;
    local int b_loc = 31;
    protected int b_prot = 32;
    int b = 33;
    function void fun();
        $display(b_loc);
    endfunction
endclass
b_cls b_obj;
initial begin
    b_obj = new;
    $display(b_obj.b);
    b_obj.fun();
end
endmodule