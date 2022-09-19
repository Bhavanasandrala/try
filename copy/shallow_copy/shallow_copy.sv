//-------------------------------------------------------
//Shallow copy:
//
//-------------------------------------------------------
class data;
  int a;
    int b ;
      function new();   
        a = 25;
         b = 56;
      endfunction
endclass
//-- class ---  
class pack;
  int c;
    int d;
    data ar;

  function new();
    c = 35;
    d = 79;
    ar = new();
  endfunction

  function void display();
    $display("\t c=%0d",c);
    $display("\t d=%0d",d);
    $display("\t a=%0d",ar.a);
    $display("\t b=%0d",ar.b);
  endfunction
endclass

module shallow;
pack p1;
pack p2;
initial begin
  p1 =new();
  $display("contents of p1");
  p1.display();
  
  p2 =new p1;
 $display("contents of p2");
   p2.display();
   p2.c=56;
  p2.ar.a=60;
  p2.ar.b=90;
  $display("diplay contents of p1");
  p1.display();
  $display("diplay contents of p2");
 p2.display();
end
  endmodule


