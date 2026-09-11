module Register_file(
    input wire [4:0] rs1,
    input wire [4:0] rs2,
    input wire [4:0] rd,
    input wire [31:0] write_data,
    input wire write_enable,
    input wire clk, 

    output wire [31:0] read_data1,
    output wire [31:0] read_data2
);

    // 32 registers, each 32 bits wide
    reg [31:0] registers [0:31];

    // Combinational read
    assign read_data1 = (rs1 == 5'd0) ? 32'b0 : registers[rs1];
    assign read_data2 = (rs2 == 5'd0) ? 32'b0 : registers[rs2];

    // Synchronous write
    always @(posedge clk) begin
        if (write_enable && (rd != 5'd0))
         begin
            registers[rd] <= write_data;
         end
    end

endmodule