module clb_3in (
    input wire clk;
    input wire rst_n;

    input wire config_en;
    input reg config_in_a [3:0];
    input reg config_in_b [3:0];

    input wire context; // 0 = context_a 1 = context_b

    input wire a;
    input wire b;
    input wire c;

    output wire out;
);

    reg [3:0] config_a;
    reg [3:0] config_b;
    wire config_curr;
    wire y;

    always @(posedge clk) begin
        if (~rst_n) begin
            config_a <= '0;
            config_b <= '0;
        end else if (config_en) begin
            config_a <= config_in_a;
            config_b <= config_in_b;
        end
    end

    always @(*) begin
        case (config_curr[2:0])
            3'b000:
                y = a;
            3'b001:
                y = a&b&c;
            3'b010:
                y = a|b|c;
            3'b011:
                y = a^b^c;
            3'b100:
                y = a?b:c;
            3'b101:
                y = (a&b)|c;
            3'b110:
                y = (a|b)&c;
            3'b111:
                y = a & ~b;
        endcase
    end

    assign out = config_curr[3] ? ~y : y;
    assign config_curr = context? config_a : config_b;

endmodule