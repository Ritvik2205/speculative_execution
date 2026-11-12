# 05 — Root-cause grouping of hardware findings (Osiris comparison)

Status: ready-for-human
Type: research
Blocked by: nothing (read the Osiris paper first)

## Question

Does Osiris's way of grouping findings merge cases that our canonical-core grouping splits?

## Done when

A short note with the comparison on our existing minimised cores, and the grouping the hardware comparison will use.

Spec: `../spec.md` section 5, W5.

## Comments

2026-11-12 (Claude): done on the 113 symbolic cores, `docs/ROOT_CAUSE_GROUPING_2026-11-12.md`. Osiris groups by instruction-set extension of trigger and measurement (6 groups on our cores); ours gives 87; the level proposed for the comparison gives 24. Re-derive on hardware cores when they exist.
