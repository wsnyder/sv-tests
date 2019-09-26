/*
:name: inherited_prot_from_outside
:description: encapsulation test
:should_fail: 1
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
        $display(b);
    endfunction
endclass
b_cls b_obj;
initial begin
    b_obj = new;
    $display(b_obj.a_prot);
    b_obj.fun();
end
endmodule