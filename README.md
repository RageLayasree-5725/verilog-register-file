# 32-bit RISC-V Register File

A 32-bit Register File designed in Verilog HDL as a core building block for a Single-Cycle RISC-V Processor.

## 📌 Project Overview

The Register File provides storage for 32 general-purpose registers, each 32 bits wide.

It supports:

- Two simultaneous read operations
- One synchronous write operation
- 32 registers (`x0`–`x31`)
- 32-bit data width
- Write enable control
- RISC-V `x0` constant-zero behavior

This module is designed as part of a larger Single-Cycle RISC-V Processor RTL implementation.

---

## 🏗️ Architecture

```text
                 ┌──────────────────────────────┐
                 │       32 × 32 Register       │
                 │            File              │
                 │                              │
    rs1 ────────►│ Read Port 1 ───► read_data1  │
                 │                              │
    rs2 ────────►│ Read Port 2 ───► read_data2  │
                 │                              │
    rd ─────────►│                              │
    write_data ─►│ Write Port                   │
    write_enable►│                              │
    clk ────────►│                              │
                 └──────────────────────────────┘
