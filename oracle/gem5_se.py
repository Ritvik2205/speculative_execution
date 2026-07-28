import argparse
from gem5.components.boards.simple_board import SimpleBoard
from gem5.components.cachehierarchies.classic.private_l1_private_l2_cache_hierarchy import (
    PrivateL1PrivateL2CacheHierarchy,
)
from gem5.components.memory import SingleChannelDDR3_1600
from gem5.components.processors.simple_processor import SimpleProcessor
from gem5.components.processors.cpu_types import CPUTypes
from gem5.isas import ISA
from gem5.resources.resource import BinaryResource
from gem5.simulate.simulator import Simulator

p = argparse.ArgumentParser()
p.add_argument("--binary", required=True)
p.add_argument("--cpu", choices=["o3", "timing"], required=True)
p.add_argument("--isa", choices=["x86", "arm"], default="x86")
args = p.parse_args()

cpu_type = CPUTypes.O3 if args.cpu == "o3" else CPUTypes.TIMING
isa = ISA.X86 if args.isa == "x86" else ISA.ARM

cache = PrivateL1PrivateL2CacheHierarchy(l1d_size="32KiB", l1i_size="32KiB", l2_size="256KiB")
memory = SingleChannelDDR3_1600(size="512MiB")
processor = SimpleProcessor(cpu_type=cpu_type, isa=isa, num_cores=1)
board = SimpleBoard(clk_freq="3GHz", processor=processor, memory=memory, cache_hierarchy=cache)
board.set_se_binary_workload(BinaryResource(local_path=args.binary))

sim = Simulator(board=board)
sim.run()
print(f"gem5-exit: {sim.get_last_exit_event_cause()}")
