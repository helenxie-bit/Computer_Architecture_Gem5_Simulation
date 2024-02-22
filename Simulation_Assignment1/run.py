import argparse
from components.boards import HW1RiscvBoard
import components.processors
from components.cache_hierarchies import HW1MESITwoLevelCache
import components.memories
from workloads.mat_mul_workload import MatMulWorkload
from gem5.simulate.simulator import Simulator
import sys

if __name__ == "__m5_main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('cpu', help='single-cycle CPU: HW1TimingSimpleCPU; in-order pipelined CPU: HW1MinorCPU')
    parser.add_argument('memory', help='HW1DDR3_1600_8x8; HW1DDR3_2133_8x8; HW1LPDDR3_1600_1x32')
    parser.add_argument('clk_freq', help='1GHz; 2GHz; 4GHz')
    args = parser.parse_args()

    try:
        cpu = getattr(components.processors, args.cpu)()
        memory = getattr(components.memories, args.memory)()

        cache = HW1MESITwoLevelCache()

        board = HW1RiscvBoard(
            clk_freq=args.clk_freq, processor=cpu, cache_hierarchy=cache, memory=memory
        )
        workload = MatMulWorkload(mat_size=224)
        board.set_workload(workload)
        simulator = Simulator(board=board, full_system=False)
        simulator.run()
        print("Finished simulation.")

    except Exception as err:
        sys.stderr.write(f"Unexpected {err=}, {type(err)=}")
        exit(1)