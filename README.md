# Dataflow-modeling-4-bit-cascadable-comparator-and-serial-comparator

This experiment focuses on using **dataflow modeling** (`assign` statements only) to describe two types of comparators: a **combinational 4-bit comparator** and a **sequential serial comparator**.

## Part 1: 1-Bit Cascadable Comparator (Combinational Logic)

### 🎯 Objective

Design a **1-bit cascadable comparator** using only `assign` statements. Then, **hierarchically connect four of them** to construct a **4-bit comparator**.

### 📐 Design Guidelines

- Each 1-bit module compares two input bits and propagates greater/less/equal status.
- Use a hierarchical design approach to compose the 4-bit comparator from four 1-bit blocks.
- The entire circuit must be **purely combinational**.

---

## Part 2: Serial Bit-by-Bit Comparator (Sequential Logic)

### 🎯 Objective

Design a **serial comparator** that compares two multi-bit numbers **bit-by-bit** over multiple clock cycles using **dataflow modeling only**.

### ⚙️ Functional Requirements

- This design must be written **as a single module**.
- The comparator:
  - Receives a `reset` signal to initialize the system.
  - Then accepts **1-bit inputs from each number** per clock cycle.
  - Outputs the comparison result **serially**, updated with each clock cycle, up to the most recent bit comparison.
- This circuit is **sequential**, but the implementation must use **only `assign` statements**.

> ⚠️ Do **not** use `always`, `if`, `case`, or other behavioral constructs.

---

## ⛔ Constraints

| Requirement                  | Part 1 | Part 2 |
|-----------------------------|--------|--------|
| Hierarchical design         | ✅ Yes | ❌ No  |
| Only dataflow (`assign`)    | ✅ Yes | ✅ Yes |
| Combinational circuit       | ✅ Yes | ❌ No  |
| Sequential circuit          | ❌ No  | ✅ Yes |
| Single-module design        | ❌ No  | ✅ Yes |

---

## 🛠 Tools

- Verilog HDL
- Simulation tools: ModelSim, Vivado
- Optional: Test using switches and LEDs on an FPGA board
