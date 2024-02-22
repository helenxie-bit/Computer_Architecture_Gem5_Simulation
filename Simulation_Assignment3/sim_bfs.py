import argparse
from components.boards import HW3RISCVBoard
import components.processors
from components.cache_hierarchies import HW3MESICache
from components.memories import HW3DDR4
from workloads.bfs_workload import BFSWorkload
from workloads.roi_manager import exit_event_handler
from gem5.simulate.simulator import Simulator
import sys

if __name__ == "__m5_main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('cpu_type')
    args = parser.parse_args()

    try:
        cpu = getattr(components.processors, args.cpu_type)()
        memory = HW3DDR4()
        cache = HW3MESICache()
        board = HW3RISCVBoard(clk_freq="2GHz", processor=cpu, cache_hierarchy=cache, memory=memory)

        workload = BFSWorkload()
        board.set_workload(workload)
        simulator = Simulator(board=board,
                      full_system=False,
                      on_exit_event=exit_event_handler)
        simulator.run()
        print("Finished simulation of workload - Breadth first search (BFS).")

        area_score = cpu.get_area_score()
        print("Area Score:", area_score)

    except Exception as err:
        sys.stderr.write(f"Unexpected {err=}, {type(err)=}")
        exit(1)