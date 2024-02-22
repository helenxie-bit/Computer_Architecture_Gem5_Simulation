#!/bin/bash

# Step 1
# Configuration 1: DAXPYWorkload
echo "Running first simulation in Step 1..."
gem5 -re --outdir=outputs/step1_1 sim_TimingSimple_DAXPY.py

# Configuration 2: HelloWorldWorkload
echo "Running second simulation in Step 1..."
gem5 -re --outdir=outputs/step1_2 sim_TimingSimple_Hello.py


# Step 2
# Configuration 1: issue latency = 4, floating point operation latency = 2
echo "Running first simulation in Step 2..."
gem5 -re --outdir=outputs/step2_1 sim_Minor_DAXPY.py 4 3 2

# Configuration 2: issue latency = 2, floating point operation latency = 4
echo "Running second simulation in Step 2..."
gem5 -re --outdir=outputs/step2_2 sim_Minor_DAXPY.py 2 3 4

# Configuration 3: issue latency = 8, floating point operation latency = 1
echo "Running third simulation in Step 2..."
gem5 -re --outdir=outputs/step2_3 sim_Minor_DAXPY.py 8 3 1


# Step 3
# Configuration 1: issue latency = 1, integer operation latency = 6, floating point operation latency = 12
echo "Running first simulation in Step 3..."
gem5 -re --outdir=outputs/step3_1 sim_Minor_DAXPY.py 1 6 12

# Configuration 2: issue latency = 1, integer operation latency = 3, floating point operation latency = 12
echo "Running second simulation in Step 3..."
gem5 -re --outdir=outputs/step3_2 sim_Minor_DAXPY.py 1 3 12

# Configuration 3: issue latency = 1, integer operation latency = 6, floating point operation latency = 6
echo "Running third simulation in Step 3..."
gem5 -re --outdir=outputs/step3_3 sim_Minor_DAXPY.py 1 6 6