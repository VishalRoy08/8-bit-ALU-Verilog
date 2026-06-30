`timescale 1ns / 1ps

module ALU_8Bit_tb;

    // Inputs
    reg [2:0] Opcode;
    reg [7:0] a;
    reg [7:0] b;

    // Output
    wire [15:0] outALU;

    // Instantiate the ALU
    ALU_8Bit uut (
        .Opcode(Opcode),
        .a(a),
        .b(b),
        .outALU(outALU)
    );

    initial begin

        $display("--------------------------------------------------------");
        $display("Time\tOpcode\tA\tB\tOutput");
        $display("--------------------------------------------------------");

        // Test Addition
        Opcode = 3'b000;
        a = 8'd20;
        b = 8'd10;
        #10;

        // Test Subtraction
        Opcode = 3'b001;
        a = 8'd20;
        b = 8'd10;
        #10;

        // Test Multiplication
        Opcode = 3'b010;
        a = 8'd12;
        b = 8'd5;
        #10;

        // Test Right Shift
        Opcode = 3'b011;
        a = 8'd32;
        b = 8'd2;
        #10;

        // Test Left Shift
        Opcode = 3'b100;
        a = 8'd8;
        b = 8'd3;
        #10;

        // Test AND
        Opcode = 3'b101;
        a = 8'b11001100;
        b = 8'b10101010;
        #10;

        // Test OR
        Opcode = 3'b110;
        a = 8'b11001100;
        b = 8'b10101010;
        #10;

        // Test XOR
        Opcode = 3'b111;
        a = 8'b11001100;
        b = 8'b10101010;
        #10;

        $finish;
    end

    // Display values whenever inputs change
   initial
    begin
        $display("Time\tOpcode\tA\tB\tOutput");
    
        $monitor("%0t\t%b\t%h\t%h\t%h",
                 $time, Opcode, a, b, outALU);
    end

endmodule