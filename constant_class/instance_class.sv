class data;
  const int a;
  string b;
  function new();
    a=5;b="bhavana";
  endfunction
   function void display();
     $display("a=%0d,b=%0d",a,b);
   endfunction
 endclass

 module tb;
 data t1;
 initial begin
 t1=new();
 //t1.a=2;
 t1.b="bhavi";
//t1.a=1;
t1.display();
end
endmodule
