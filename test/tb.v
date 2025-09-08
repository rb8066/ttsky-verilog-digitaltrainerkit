`default_nettype none
module tb_digital_logic_trainer;

reg a, b;
wire and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out;

// Instantiate the design
digital_logic_trainer uut (
    .a(a), .b(b),
    .and_out(and_out),
    .or_out(or_out),
    .not_a(not_a),
    .nand_out(nand_out),
    .nor_out(nor_out),
    .xor_out(xor_out),
    .xnor_out(xnor_out)
);

initial begin
    $display("A B | AND OR NOT_A NAND NOR XOR XNOR");
    $display("--------------------------------------");
    for (integer i = 0; i < 4; i = i + 1) begin
        {a, b} = i;
        #10; // wait for signal to propagate
        $display("%b %b |  %b   %b    %b     %b    %b   %b    %b",
                 a, b, and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out);
    end
    $finish;
end

endmodule
