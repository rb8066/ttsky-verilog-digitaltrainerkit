/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

// Digital Logic Trainer Kit - Core Logic Implementation
module digital_logic_trainer (
    input wire a,        // Input switch A
    input wire b,        // Input switch B
    output wire and_out,
    output wire or_out,
    output wire not_a,
    output wire nand_out,
    output wire nor_out,
    output wire xor_out,
    output wire xnor_out
);

// Basic logic gate implementations
assign and_out  = a & b;
assign or_out   = a | b;
assign not_a    = ~a;
assign nand_out = ~(a & b);
assign nor_out  = ~(a | b);
assign xor_out  = a ^ b;
assign xnor_out = ~(a ^ b);

endmodule
