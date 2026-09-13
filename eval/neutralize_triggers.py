import re

_TRIGGERS = {"verw":"nop","movntdqa":"movdqa","clflush":"nop","clflushopt":"nop",
             "rdtsc":"mov","rdtscp":"mov","lfence":"nop","mfence":"nop","sfence":"nop"}
_OP = re.compile(r'^(\s*)([A-Za-z][A-Za-z0-9.]*)(.*)$')

def neutralize_triggers(sequence, mode="mask"):
    out = []
    for line in sequence:
        m = _OP.match(line)
        op = m.group(2).lower() if m else ""
        if op in _TRIGGERS:
            if mode == "drop":
                continue
            out.append(f"{m.group(1)}{_TRIGGERS[op]}{m.group(3)}")
        else:
            out.append(line)
    return out
