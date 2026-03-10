# Synchronous FIFO Design (Verilog)

## Overview
This project implements a **Synchronous FIFO (First-In First-Out) buffer** using Verilog.  
In a synchronous FIFO, both read and write operations are controlled by the **same clock**. Such FIFOs are commonly used in digital systems for buffering data between modules operating in the same clock domain.

The design was created and simulated using **Xilinx Vivado**.

## FIFO Architecture
The FIFO consists of a memory array along with **read and write pointers** that control where data is written and read.

Main components of the design:

- Memory array for data storage
- Write pointer
- Read pointer
- Full flag logic
- Empty flag logic

Architecture diagram:
The architecture of the FIFO is provided. Kindly refer to it.

## Features
- Parameterized FIFO design
- Single clock operation
- Separate read and write enable signals
- Full and Empty flag generation
- Verilog testbench for verification
- Simulated using Vivado

## Module Description
### FIFO Module
The FIFO module performs the following operations:

- Writes data into the FIFO when **write enable** is asserted and FIFO is not full
- Reads data from the FIFO when **read enable** is asserted and FIFO is not empty
- Updates read and write pointers
- Generates **full** and **empty** status signals

### Testbench
A Verilog testbench is written to verify the functionality of the FIFO.  
The testbench performs multiple write and read operations and checks whether the FIFO behaves correctly.


## Simulation Result
The waveform provided in the repository shows the simulation output verifying correct FIFO operation for the given testbench.
