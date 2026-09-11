# 32×32-bit Register File — Verilog HDL

A 32×32-bit Register File designed and functionally verified using **Verilog HDL** and **Xilinx Vivado**.

This module is one of the fundamental building blocks used in a processor datapath and is being developed as part of my step-by-step RTL design learning journey.

## Overview

A register file is a collection of registers used to store temporary data inside a processor.

This implementation contains:

- **32 registers** (x0–x31)
- **32-bit data width** for each register
- **Two read ports**
- **One write port**
- **Synchronous write operation**
- **Combinational read operation**
- **Write-enable control**
- **x0 implemented as a constant-zero register**

## Register File Architecture

```text
                 ┌─────────────────────────┐
       rs1 ─────►│                         │────► read_data1
                 │                         │
       rs2 ─────►│    32 × 32 Register    │────► read_data2
                 │         File            │
       rd  ─────►│                         │
                 │                         │
 write_data ────►│                         │
                 │                         │
write_enable ──►│                         │
                 │                         │
      clk ──────►│                         │
                 └─────────────────────────┘
