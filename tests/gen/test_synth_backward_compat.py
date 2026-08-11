"""Backward-compatibility guard: render_spec()/render() must produce
byte-identical output to before this plan's changes when gen_body/generated
content is not supplied. Captures the CURRENT (pre-change) output as a
golden fixture at write-time -- run this test's fixture-capture step BEFORE
making any template edits (see Task 2 Step 1's instructions)."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

from gen.synth.spectector_gadgets import render_spec, CLASSES as SPEC_CLASSES  # noqa: E402


# Captured from the pre-change gen/synth/spectector_gadgets.py by running
# render_spec(c, fenced) for every class before Step 2's edits. If you are
# implementing this task, run the capture snippet below FIRST against the
# unmodified file, paste the results here, THEN make the template edits.
#
# Capture snippet (run once, before editing):
#   python3 -c "
#   import sys; sys.path.insert(0, '.')
#   from gen.synth.spectector_gadgets import render_spec, CLASSES
#   import json
#   out = {}
#   for c in CLASSES:
#       for fenced in (False, True):
#           out[f'{c}_{fenced}'] = render_spec(c, fenced)
#   print(json.dumps(out, indent=2))
#   "
GOLDEN = {'BENIGN_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ (void)arr[i]; probe[3*64]=1; } }\n', 'BENIGN_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ asm volatile("lfence":::"memory"); (void)arr[i]; probe[3*64]=1; } }\n', 'SPECTRE_V1_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'SPECTRE_V1_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ asm volatile("lfence":::"memory"); uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'SPECTRE_V2_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void (*fp)(size_t);\nvoid gadget(size_t i){ fp(i); }\n', 'SPECTRE_V2_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void (*fp)(size_t);\nvoid gadget(size_t i){ asm volatile("lfence":::"memory"); fp(i); }\n', 'SPECTRE_V4_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t store[]; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ store[i]=0; uint8_t v=store[i]; probe[v*64]=1; } }\n', 'SPECTRE_V4_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t store[]; extern size_t sz;\nvoid gadget(size_t i){ if(i<sz){ store[i]=0; asm volatile("lfence":::"memory"); uint8_t v=store[i]; probe[v*64]=1; } }\n', 'L1TF_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *secret_ptr;\nvoid gadget(void){ uint8_t v=*secret_ptr; probe[v*64]=1; }\n', 'L1TF_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *secret_ptr;\nvoid gadget(void){ uint8_t v=*secret_ptr; asm volatile("lfence":::"memory"); probe[v*64]=1; }\n', 'MDS_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *secret_ptr;\nvoid gadget(void){ uint8_t v=*secret_ptr; probe[v*64]=1; }\n', 'MDS_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *secret_ptr;\nvoid gadget(void){ uint8_t v=*secret_ptr; asm volatile("lfence":::"memory"); probe[v*64]=1; }\n', 'RETBLEED_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void leaf(size_t i);\nvoid gadget(size_t i){ leaf(i); if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'RETBLEED_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void leaf(size_t i);\nvoid gadget(size_t i){ leaf(i); asm volatile("lfence":::"memory"); if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'INCEPTION_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void leaf(size_t i);\nvoid gadget(size_t i){ leaf(i); if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'INCEPTION_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void leaf(size_t i);\nvoid gadget(size_t i){ leaf(i); asm volatile("lfence":::"memory"); if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }\n', 'BHI_False': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void (*fp)(size_t);\nvoid gadget(size_t i){ if(i<sz){ fp(i); } }\n', 'BHI_True': '#include <stdint.h>\n#include <stddef.h>\nextern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\nextern void (*fp)(size_t);\nvoid gadget(size_t i){ if(i<sz){ asm volatile("lfence":::"memory"); fp(i); } }\n'}


def test_render_spec_unchanged_for_every_class_and_fence_state():
    for c in SPEC_CLASSES:
        for fenced in (False, True):
            key = f"{c}_{fenced}"
            assert key in GOLDEN, f"missing golden fixture for {key} -- run the capture snippet first"
            assert render_spec(c, fenced) == GOLDEN[key], f"render_spec({c!r}, {fenced}) changed!"
