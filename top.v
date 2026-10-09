module top(
 // Implement top level module
     input [7:0]sw,
     output [5:0] led
 );
     light light1(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
  );
        adder adder1(
           .A(sw[2]),
           .B(sw[3]),
           .Y(led[1]),
           .Cout(led[2])
         );
         wire carry1;
         
         full_adder f1(
             .A(sw[4]),
             .B(sw[6]),
             .Cin(1'b0),
             .Y(led[3]),
             .Cout(carry1)
           );
  
             
          full_adder f2 (
             .A(sw[5]),
             .B(sw[7]),
             .Y(led[4]),
             .Cin(carry1),
             .Cout(led[5])
         );
  endmodule