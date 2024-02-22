from components.boards import HW2RiscvBoard
from components.processors import HW2TimingSimpleCPU
from components.cache_hierarchies import HW2MESITwoLevelCache
from components.memories import HW2DDR4_2400_8x8
from workloads.hello_world_workload import HelloWorkload
from workloads.roi_manager import exit_event_handler
from gem5.simulate.simulator import Simulator
import sys

if __name__ == "__m5_main__":
    cpu = HW2TimingSimpleCPU()

    memory = HW2DDR4_2400_8x8()
    cache = HW2MESITwoLevelCache()

    board = HW2RiscvBoard(clk_freq="4GHz", processor=cpu, cache_hierarchy=cache, memory=memory)
    workload = HelloWorkload()
    board.set_workload(workload)
    simulator = Simulator(board=board,
                      full_system=False,
                      on_exit_event=exit_event_handler)
    simulator.run()
    print("Finished simulation.")