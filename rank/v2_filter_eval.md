# SPECTRE_V2 leak-vs-safe filter (retargeted ranker)

337 unique leak/safe sequences (LEAK 0 / SAFE 337; 563 unrunnable excluded, 0 conflicting dropped). Source: Spectector-Combined `-v 2` oracle labels (gen/rl_v2_bootstrap). RL round is the confounder, so AUCs are within-round and the learned head uses a prospective (train rounds $\le r$, test $r{+}1$) split.

**Only one verdict class present (LEAK=0, SAFE=337); a leak-vs-safe filter is undefined until both exist.** V2's ~0.8% leak rate means a single bootstrap often yields 0 leaks -- add rounds, or seed from the i5 hardware V2 campaign.

