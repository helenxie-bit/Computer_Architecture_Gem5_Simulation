import argparse
from components.boards import HW2RiscvBoard
from components.processors import HW2MinorCPU
from components.cache_hierarchies import HW2MESITwoLevelCache
from components.memories import HW2DDR4_2400_8x8
from workloads.daxpy_workload import DAXPYWorkload
from workloads.roi_manager import exit_event_handler
from gem5.simulate.simulator import Simulator
import sys

if __name__ == "__m5_main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('issue_latency', help='default=2')
    parser.add_argument('int_operation_latency', help='default=3')
    parser.add_argument('fp_operation_latency', help='default=6')
    args = parser.parse_args()

    try:
        cpu = HW2MinorCPU(issue_latency=int(args.issue_latency),
                          int_operation_latency=int(args.int_operation_latency),
                          fp_operation_latency=int(args.fp_operation_latency))

        memory = HW2DDR4_2400_8x8()
        cache = HW2MESITwoLevelCache()

        board = HW2RiscvBoard(clk_freq="4GHz", processor=cpu, cache_hierarchy=cache, memory=memory)
        workload = DAXPYWorkload()
        board.set_workload(workload)
        simulator = Simulator(board=board,
                      full_system=False,
                      on_exit_event=exit_event_handler)
        simulator.run()
        print("Finished simulation.")

    except Exception as err:
        sys.stderr.write(f"Unexpected {err=}, {type(err)=}")
        exit(1)