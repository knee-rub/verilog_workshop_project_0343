module gcd(
    input clk,
    input reset,
    input [3:0] x_in,
    input [3:0] y_in,
    output reg [3:0] gcd,
    output reg valid
);

    // declaration of states
    localparam S0 = 2'b00; // initial/default state
    localparam S1 = 2'b01; // x < y
    localparam S2 = 2'b10; // x > y
    localparam S3 = 2'b11; // x = y
    reg [1:0] state, nxtstate;
    reg [3:0] x, y;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            x = x_in;
            y = y_in;
            valid = 1'b0;
            gcd = 4'd0;
        end else begin
            state <= nxtstate;
        end
    end

    always @(*) begin
        if (x < y) begin
            nxtstate <= S1;
        end else if (x > y) begin
            nxtstate <= S2;
        end else begin
            nxtstate <= S3;
        end
    end

    always @(negedge clk) begin
        case(state)
            S1: begin
                y = y - x;
            end

            S2: begin
                x = x - y;
            end

            S3: begin
                valid = 1'b1;
                gcd = x;
            end
        endcase
    end
endmodule
