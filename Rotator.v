//  PURPOSE: An RTL modeling for a parameterized Left/Right rotator.

module Rotator

//-----------------Parameters-----------------\\
(
    parameter  WIDTH = 8,
               
)
//-----------------Ports-----------------\\
(
    input  wire                          Direction,  //  High for left rot, low for right rot.
    input  wire [($clog2(WIDTH)-1) : 0]  SHAMT,      //  Shift Amount
    input  wire [(WIDTH-1) : 0]          data_in,    //  Data to be rotated

    output reg  [(WIDTH-1) : 0]          data_rotated
);
//-----------------Regs-----------------\\
reg [(WIDTH-1) : 0] temp1;
reg [(WIDTH-1) : 0] temp2;

//-----------------Internals-----------------\\
always @(*)
 begin
    temp1 = {WIDTH{1'b0}};
    temp2 = data_in;
    if (Direction) 
    begin
        //  Rotate left
        temp_1 = (temp_2 << SHAMT) | (temp_2 >> (WIDTH-SHAMT)); 
    end
    else
    begin
        //  Rotate right
        temp_1 = (temp_2 >> SHAMT) | (temp_2 << (WIDTH-SHAMT));
    end
end
    
endmodule
