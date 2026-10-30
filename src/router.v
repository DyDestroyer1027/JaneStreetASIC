`default_nettype none

module router (
    inout  wire [7:0] inout_wire,          // Inout wire, general purpose
    output wire [7:0] postprocessor_out,  // IOs: Input path
    output wire [7:0] preprocessor_out,    // IOs: Output path

    input  wire       clk,          // clock
    input  wire       rst_n         // reset_n - low to reset
);


endmodule