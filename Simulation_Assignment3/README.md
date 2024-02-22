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


## Parameters of Simulations
| Type  | width | rob_size | num_int_regs | num_fp_regs |
| --- | --- | --- | --- | --- |
| HW3BigCore  | 6  | 512 | 280 | 332 |
| HW3LittleCore  | 3  | 128 | 100 | 100 |
| HW3MediumCore1  | 4  | 256 | 256 | 256 |
| HW3MediumCore2  | 5  | 256 | 128 | 128 |
| HW3MediumCore3  | 5  | 256 | 256 | 256 |
| HW3MediumCore4  | 5  | 512 | 256 | 256 |

### Note on Medium Cores
In our codebase, all medium cores are coded as `HW3LittleCore` with higher parameter values. To simulate medium cores, you can either modify the parameters of `HW3LittleCore` or add a new class with the desired specifications in `components/processors.py`.


## Adding More Core Configurations
### Extending Core Types
To add more core configurations to the simulation, follow these steps:

1. **Define New Core Classes**: Add new core classes in the `components/processors.py` file. For example, to add a core named `HW3MediumCore`, define it in the `processors.py` file.
2. **Modify the Script**: Adjust the `run_simulations.sh` script to include your new core configurations. 
3. **Re-run the Script**: After making these changes, re-run the `run_simulations.sh` script to include the new cores or the updated range in the simulation.
