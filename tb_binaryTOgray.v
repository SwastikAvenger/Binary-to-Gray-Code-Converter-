`timescale 1ns/1ps

module tb_binaryTOgray;
    reg en;
    reg [4:0] i_data;
    wire [4:0] o_data;
    
    //Instantiating DUT
    binaryTOgray bTg(
        .en(en),
        .i_data(i_data),
        .o_data(o_data)
    );
    
    //Stimulus
        initial begin
            //enable = 0  reset = 0
            en = 0;
            #10 i_data = 5'b10010;
            #10 i_data = 5'b11011;
            #10 i_data = 5'b01101;
            #10 i_data = 5'b10011;
            #10 i_data = 5'b11101;
            #10 i_data = 5'b10010;
            #10 i_data = 5'b11011;
            #10 i_data = 5'b01101;
            #10 i_data = 5'b10111;
            #10 i_data = 5'b11101;
            
            //enable = 1  reset = 0
            en = 1;
            #10 i_data = 5'b00000;
            #10 i_data = 5'b00001;
            #10 i_data = 5'b00010;
            #10 i_data = 5'b00011;
            
            #10 i_data = 5'b00100;
            #10 i_data = 5'b00101;
            #10 i_data = 5'b00110;
            #10 i_data = 5'b00111;
            
            #10 i_data = 5'b01000;
            #10 i_data = 5'b01001;
            #10 i_data = 5'b01010;
            #10 i_data = 5'b01011;
            
            #10 i_data = 5'b01100;
            #10 i_data = 5'b01101;
            #10 i_data = 5'b01110;
            #10 i_data = 5'b01111;
            
            $finish;        //End Stimulus 
        end
endmodule