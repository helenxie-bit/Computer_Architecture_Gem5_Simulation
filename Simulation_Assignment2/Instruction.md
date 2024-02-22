# Simulation Instructions

## Steps to Run the Simulations
#### 1. Open your terminal or command-line interface.
#### 2. Navigate to the directory where the shell script "run_simulations.sh" is located.
#### 3. Execute the shell script with the command:
```bash
chmod +x run_simulations.sh
 ```
```bash
./run_simulations.sh
 ```

## Explanations of Outputs
| Output  | CPU | Workload | Issue Latency | Integer Operation Latency | Floating Point Operation Latency |
| --- | --- | --- | --- | --- | --- |
| step1_1  | HW2TimingSimpleCPU  | DAXPYWorkload | - | - | - |
| step1_2  | HW2TimingSimpleCPU  | HelloWorkload | - | - | - |
| step2_1  | HW2MinorCPU  | DAXPYWorkload | 4 | 3 | 2 |
| step2_2  | HW2MinorCPU  | DAXPYWorkload | 2 | 3 | 4 |
| step2_3  | HW2MinorCPU  | DAXPYWorkload | 8 | 3 | 1 |
| step3_1  | HW2MinorCPU  | DAXPYWorkload | 1 | 6 | 12 |
| step3_2  | HW2MinorCPU  | DAXPYWorkload | 1 | 3 | 12 |
| step3_3  | HW2MinorCPU  | DAXPYWorkload | 1 | 6 | 6 |
