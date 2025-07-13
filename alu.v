module alu (
    input [3:0] A, B,
    input [1:0] sel,
    output reg [3:0] result
);
    always @(*) begin
        case(sel)
            2'b00: result = A + B;
            2'b01: result = A - B;
            2'b10: result = A & B;
            2'b11: result = A | B;
            default: result = 4'b0000;
        endcase
    end
endmodule
