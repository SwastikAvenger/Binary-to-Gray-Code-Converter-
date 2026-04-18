`timescale 1ns / 1ps
/*
    For Conversion from Binary to Gray Code, we perform the following steps:
    If a Binary Code is B4B3B2B1B0, and the Gray Code is G4G3G2G1G0 then
    G4 = B4,    G3 = B4 xor B3,    G2 = B3 xor B2,    G1 = B2 xor B1,    G0 = B1 xor B0      
*/
module binaryTOgray(
        input en,       //enable
        input rst,      //reset
        input [4:0] i_data,  //input data in Binary number format
        
        output wire [4:0] o_data  //output data in Gray Code Format
    );
        reg [4:0]o_data_temp;   //temporary register to hold the data
        always@(*)begin
            if(en)begin
                o_data_temp[4] = i_data[4];
                o_data_temp[3] = i_data[4]^i_data[3];
                o_data_temp[2] = i_data[3]^i_data[2];
                o_data_temp[1] = i_data[2]^i_data[1];
                o_data_temp[0] = i_data[1]^i_data[0];
            end
        end
        assign o_data = o_data_temp;
endmodule
