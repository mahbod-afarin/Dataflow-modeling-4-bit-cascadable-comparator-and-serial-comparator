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

## 🧪 Experiment Summary

### 🔹 Part 1: 6-bit Cascaded Comparator (Combinational)

In the first part of the experiment, the goal was to construct a **6-bit comparator** using **six 1-bit comparators connected in series**.

#### 🔧 Design Approach

- Each **1-bit comparator** takes:
  - Two **single-bit inputs** to compare.
  - One **carry-in result** from the more significant bit comparison (higher level).
- The logic inside each 1-bit block determines:
  - Whether the current bits are equal, one is greater, or one is less.
  - If bits are equal, the decision is delegated to the higher-order result.
- We built the **6-bit comparator** by **cascading 6 one-bit comparators**.
- The **comparison output of the (i+1)-th comparator** is passed as input to the i-th comparator.
- The **final comparator** in the chain determines the comparison result across all 6 bits.

---

### 🔹 Part 2: Serial Comparator (Sequential)

In the second part of the experiment, a **serial comparator** was designed that compares two binary numbers **bit by bit** over several clock cycles.

#### ⚙️ Functional Description

- The module contains **three 1-bit registers** to track comparison status through time.
- The **output of the comparator is also based on these 3 registers**.
- At each rising clock edge:
  - The comparator receives **1-bit inputs** from the two numbers.
  - Based on the **incoming bits** and the **current status of the registers**, the result is updated.
- The **registers store intermediate comparison results**, and the output becomes valid at the end of the clock cycle.

#### 💡 Notes

- This design is entirely **sequential**, updated on the rising edge of the clock.
- The output reflects the comparison result **up to the current bit**.
- At the end of all bit inputs, the output gives the final comparison result.

