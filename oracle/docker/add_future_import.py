#!/usr/bin/env python2
"""
Ensure `from __future__ import print_function` is present in every Python
source file gem5's SCons build loads (*.py, SConstruct, SConscript*).

Root cause this works around: Python 2's compile() inherits __future__ flags
from the CALLING frame by default. Whether print_function ends up active for
a given file therefore depends on which internal SCons code path loaded it
(site_init.py loading inherits it from SCons/Script/Main.py; SConstruct
loading apparently does not) -- inconsistent and not something this
2018-era tree was written assuming. Making the import explicit in every file
removes the dependency on that inheritance behavior entirely.
"""
import os

targeted = []
for root, dirs, fnames in os.walk('.'):
    for fn in fnames:
        if fn.endswith('.py') or fn == 'SConstruct' or fn.startswith('SConscript'):
            targeted.append(os.path.join(root, fn))

patched = 0
for path in targeted:
    with open(path) as f:
        content = f.read()
    if 'from __future__ import print_function' in content:
        continue
    lines = content.split('\n')
    insert_at = 1 if lines and lines[0].startswith('#!') else 0
    lines.insert(insert_at, 'from __future__ import print_function')
    with open(path, 'w') as f:
        f.write('\n'.join(lines))
    patched += 1

print('scanned %d files, patched %d' % (len(targeted), patched))
