#!/bin/bash

# Step 1
# Configuration 1: BigCore - Matrix Multiplication Workload
echo "Running first simulation..."
gem5 -re --outdir=outputs/big/big_matmul sim_matmul.py HW3BigCore

# Configuration 1: BigCore - Breadth first search (BFS) Workload
echo "Running second simulation..."
gem5 -re --outdir=outputs/big/big_bfs sim_bfs.py HW3BigCore

# Configuration 1: BigCore - Bubble Sort Workload
echo "Running third simulation..."
gem5 -re --outdir=outputs/big/big_bubblesort sim_bubblesort.py HW3BigCore

# Configuration 1: BigCore - N-Queens Workload
echo "Running fourth simulation..."
gem5 -re --outdir=outputs/big/big_queens sim_queens.py HW3BigCore


# Configuration 2: LittleCore - Matrix Multiplication Workload
echo "Running fifth simulation..."
gem5 -re --outdir=outputs/little/little_matmul sim_matmul.py HW3LittleCore

# Configuration 2: LittleCore - Breadth first search (BFS) Workload
echo "Running sixth simulation..."
gem5 -re --outdir=outputs/little/little_bfs sim_bfs.py HW3LittleCore

# Configuration 2: LittleCore - Bubble Sort Workload
echo "Running seventh simulation..."
gem5 -re --outdir=outputs/little/little_bubblesort sim_bubblesort.py HW3LittleCore

# Configuration 2: LittleCore - N-Queens Workload
echo "Running eighth simulation..."
gem5 -re --outdir=outputs/little/little_queens sim_queens.py HW3LittleCore


# Step 2
# Configuration 3: MediumCore1 - Matrix Multiplication Workload
echo "Running first simulation..."
gem5 -re --outdir=outputs/medium1/medium1_matmul sim_matmul.py HW3MediumCore1

# Configuration 3: MediumCore1 - Breadth first search (BFS) Workload
echo "Running second simulation..."
gem5 -re --outdir=outputs/medium1/medium1_bfs sim_bfs.py HW3MediumCore1

# Configuration 3: MediumCore1 - Bubble Sort Workload
echo "Running third simulation..."
gem5 -re --outdir=outputs/medium1/medium1_bubblesort sim_bubblesort.py HW3MediumCore1

# Configuration 3: MediumCore1 - N-Queens Workload
echo "Running fourth simulation..."
gem5 -re --outdir=outputs/medium1/medium1_queens sim_queens.py HW3MediumCore1


# Configuration 4: MediumCore2 - Matrix Multiplication Workload
echo "Running fifth simulation..."
gem5 -re --outdir=outputs/medium2/medium2_matmul sim_matmul.py HW3MediumCore2

# Configuration 4: MediumCore2 - Breadth first search (BFS) Workload
echo "Running sixth simulation..."
gem5 -re --outdir=outputs/medium2/medium2_bfs sim_bfs.py HW3MediumCore2

# Configuration 4: MediumCore2 - Bubble Sort Workload
echo "Running seventh simulation..."
gem5 -re --outdir=outputs/medium2/medium2_bubblesort sim_bubblesort.py HW3MediumCore2

# Configuration 4: MediumCore2 - N-Queens Workload
echo "Running eighth simulation..."
gem5 -re --outdir=outputs/medium2/medium2_queens sim_queens.py HW3MediumCore2


# Configuration 5: MediumCore3 - Matrix Multiplication Workload
echo "Running ninth simulation..."
gem5 -re --outdir=outputs/medium3/medium3_matmul sim_matmul.py HW3MediumCore3

# Configuration 5: MediumCore3 - Breadth first search (BFS) Workload
echo "Running tenth simulation..."
gem5 -re --outdir=outputs/medium3/medium3_bfs sim_bfs.py HW3MediumCore3

# Configuration 5: MediumCore3 - Bubble Sort Workload
echo "Running eleventh simulation..."
gem5 -re --outdir=outputs/medium3/medium3_bubblesort sim_bubblesort.py HW3MediumCore3

# Configuration 5: MediumCore3 - N-Queens Workload
echo "Running twelfth simulation..."
gem5 -re --outdir=outputs/medium3/medium3_queens sim_queens.py HW3MediumCore3


# Configuration 6: MediumCore4 - Matrix Multiplication Workload
echo "Running thirteenth simulation..."
gem5 -re --outdir=outputs/medium4/medium4_matmul sim_matmul.py HW3MediumCore4

# Configuration 6: MediumCore4 - Breadth first search (BFS) Workload
echo "Running fourteenth simulation..."
gem5 -re --outdir=outputs/medium4/medium4_bfs sim_bfs.py HW3MediumCore4

# Configuration 6: MediumCore4 - Bubble Sort Workload
echo "Running fifteenth simulation..."
gem5 -re --outdir=outputs/medium4/medium4_bubblesort sim_bubblesort.py HW3MediumCore4

# Configuration 6: MediumCore4 - N-Queens Workload
echo "Running sixteenth simulation..."
gem5 -re --outdir=outputs/medium4/medium4_queens sim_queens.py HW3MediumCore4
