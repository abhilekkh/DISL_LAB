# Digital Systems Lab 

A collection of Verilog HDL programs, circuit designs, and simulation exercises for the **Digital Systems Lab** course at Manipal Institute of Technology, Manipal, for the academic year 2026–2027.

## 📚 Lab Experiments

| Lab No. | Experiment |
|---|---|
| 1 | Introduction to Verilog |
| 2 | Simplification Using K-Maps |
| 3 | Multilevel Synthesis |
| 4 | Arithmetic Circuits |
| 5 | Comparators and Multiplexers |
| 6 | Decoders and Encoders |
| 7 | Flip-Flops |
| 8 | Registers |
| 9 | Design of Sequential Circuits |
| 10 | Counters |

## 🛠️ Tools and Technologies

- **Hardware Description Language:** Verilog HDL
- **Simulator:** Icarus Verilog
- **Waveform Viewer:** GTKWave
- **Version Control:** Git and GitHub

## 🚀 Getting Started

### Prerequisites

Install the following tools:

- Icarus Verilog (`iverilog` and `vvp`)
- GTKWave for viewing simulation waveforms

### Compile and Simulate

Navigate to the directory containing your Verilog source and testbench files.

Compile the testbench:

```bash
iverilog -o simulation.vvp testbench.v
```

Run the simulation:

```bash
vvp simulation.vvp
```

If the testbench generates a VCD waveform file, open it using:

```bash
gtkwave waveform.vcd
```

Replace the filenames with those used in your experiment.

## 🎯 Learning Objectives

- Understand digital logic circuits and Boolean expressions.
- Simplify Boolean functions using Karnaugh maps.
- Design and simulate combinational logic circuits.
- Implement arithmetic circuits such as adders and multipliers.
- Design comparators, multiplexers, encoders, and decoders.
- Understand sequential circuits, flip-flops, registers, and counters.
- Write, test, and simulate hardware designs using Verilog HDL.

## 📁 Repository Structure

```text
Digital-Systems-Lab/
├── Lab-1/
├── Lab-2/
├── Lab-3/
├── Lab-4/
├── Lab-5/
├── Lab-6/
├── Lab-7/
├── Lab-8/
├── Lab-9/
├── Lab-10/
└── README.md
```

*The folder names above are a suggested structure. Adjust them to match the actual files in this repository.*

## ⚠️ Disclaimer

This repository is intended for educational purposes and lab revision. Implementations and results should be verified against the prescribed lab manual and course requirements.

---
