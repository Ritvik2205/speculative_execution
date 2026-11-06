"""Parse ELF gcc/clang `-S` output into named functions."""
import re

_LABEL = re.compile(r"^([A-Za-z_][\w.$]*):\s*(?:(?:#|//|@).*)?$")


def extract_named_functions(asm_text: str) -> dict[str, list[str]]:
    """Split on `name:` ... `.cfi_endproc`. Keys keep suffixes (foo.isra.0)."""
    funcs: dict[str, list[str]] = {}
    cur = None
    body: list[str] = []
    pending = None  # last non-local label seen outside a function
    for line in asm_text.splitlines():
        s = line.strip()
        if cur is None:
            m = _LABEL.match(s)
            if m and not m.group(1).startswith(".L"):
                pending = m.group(1)
            elif s.startswith(".cfi_startproc") and pending:
                cur, body = pending, []
                pending = None
            continue
        if s.startswith(".cfi_endproc"):
            funcs[cur] = body
            cur = None
            continue
        if s:
            body.append(line.rstrip())
    return funcs


def find_function(funcs: dict[str, list[str]], name: str):
    """Exact name, else the first `name.<suffix>` (.isra.0/.constprop.0/.part.0/...),
    else an Itanium-mangled top-level C++ function `_Z<len>name<params>`."""
    if name in funcs:
        return funcs[name]
    prefix = name + "."
    for k, v in funcs.items():
        if k.startswith(prefix):
            return v
    for mangled in (f"_Z{len(name)}{name}", f"_ZL{len(name)}{name}"):  # extern / static
        for k, v in funcs.items():
            if k.startswith(mangled):
                return v
    return None
