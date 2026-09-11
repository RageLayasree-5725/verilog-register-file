# 32×32-bit Register File — Verilog HDL

<p align="center">
  <b>RTL Design • Verilog HDL • Functional Verification • Xilinx Vivado</b>
</p>

A synthesizable **32×32-bit Register File** designed in Verilog HDL and functionally verified using **Xilinx Vivado**.

This project focuses on understanding how a processor stores, reads, and writes register data at the RTL level.

---

## 📌 Project Overview

A **Register File** is a collection of registers used by a processor to temporarily store data and operands.

This implementation contains **32 registers**, each **32 bits wide**, with:

- Two independent read ports
- One write port
- Synchronous write operation
- Combinational read operation
- Write-enable control
- Dedicated x0 constant-zero behavior

The design is implemented from RTL and verified through directed simulation.

---

## 🏗️ Architecture

```text
                         ┌──────────────────────────┐
                         │                          │
             rs1 ───────►│                          │──────► read_data1
                         │                          │
             rs2 ───────►│     32 × 32 Register    │──────► read_data2
                         │          File            │
                         │                          │
              rd ───────►│                          │
                         │                          │
       write_data ──────►│                          │
                         │                          │
      write_enable ─────►│                          │
                         │                          │
              clk ──────►│                          │
                         └──────────────────────────┘
