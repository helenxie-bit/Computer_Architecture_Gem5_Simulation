# Simulation Script Instructions

## Introduction
This README provides detailed instructions on how to run the simulation script.

## Steps to Run the Simulation
#### Open your terminal or command-line interface.
#### Navigate to the directory where `run.py` is located.
#### Execute the script with the command:
```bash
gem5 -re --outdir=[path to your desired directory] run.py [CPU] [MEMORY] [CLK_FREQ]
 ```
Replace `[path to your desired directory]`, `[CPU]`, `[MEMORY]`, and `[CLK_FREQ]` with the appropriate values:
- For `path to your desired directory`, use the directory where you want the output files to be saved. In our simulation, we use name as stepx_x for each step. And store all outputs in `outputs`.
- For `CPU`, use `HW1TimingSimpleCPU` or `HW1MinorCPU`.
- For `MEMORY`, use `HW1DDR3_1600_8x8`, `HW1DDR3_2133_8x8`, or `HW1LPDDR3_1600_1x32`.
- For `CLK_FREQ`, use `1GHz`, `2GHz`, or `4GHz`.

#### Modify `mm_bin` in `workloads/mat_mul_workload.py` to use different compiler optimization flags

## Expalanation of Outputs
| Output  | CPU | Memory | Clock Frequency | Compiler Flag |
| --- | --- | --- | --- | --- |
| step1_1  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 1GHz | O2 |
| step1_2  | HW1MinorCPU  | HW1DDR3_1600_8x8 | 1GHz | O2 |
| step1_3  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 2GHz | O2 |
| step1_4  | HW1MinorCPU  | HW1DDR3_1600_8x8 | 2GHz | O2 |
| step1_5  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 4GHz | O2 |
| step1_6  | HW1MinorCPU  | HW1DDR3_1600_8x8 | 4GHz | O2 |
| step2_1  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 4GHz | O2 |
| step2_2  | HW1MinorCPU  | HW1DDR3_1600_8x8 | 4GHz | O2 |
| step2_3  | HW1TimingSimpleCPU  | HW1DDR3_2133_8x8 | 4GHz | O2 |
| step2_4  | HW1MinorCPU  | HW1DDR3_2133_8x8 | 4GHz | O2 |
| step2_5  | HW1TimingSimpleCPU  | HW1LPDDR3_1600_1x32 | 4GHz | O2 |
| step2_6  | HW1MinorCPU  | HW1LPDDR3_1600_1x32 | 4GHz | O2 |
| step3_1  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 4GHz | O0 |
| step3_1  | HW1TimingSimpleCPU  | HW1DDR3_1600_8x8 | 4GHz | O3 |
