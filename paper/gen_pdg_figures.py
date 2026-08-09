#!/usr/bin/env python3
"""
Generate PDG comparison figures for misclassified pairs.
Colorblind-safe palette (Wong 2011 8-color).
Output: paper/figures/pdg_*.png
"""

import sys
import json
import math
from pathlib import Path
from collections import defaultdict, deque

import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib.lines import Line2D

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "v54"))
from pdg_builder import PDGBuilder, EDGE_TYPES, OPCODE_CATEGORIES

OUT_DIR = Path(__file__).resolve().parent / "figures"
OUT_DIR.mkdir(exist_ok=True)

# ---------------------------------------------------------------------------
# Wong (2011) colorblind-safe palette
# ---------------------------------------------------------------------------
WONG = {
    "black":    "#000000",
    "orange":   "#E69F00",
    "sky":      "#56B4E9",
    "green":    "#009E73",
    "yellow":   "#F0E442",
    "blue":     "#0072B2",
    "vermilion":"#D55E00",
    "purple":   "#CC79A7",
    "lgray":    "#BBBBBB",
    "mgray":    "#888888",
    "dgray":    "#444444",
    "white":    "#FFFFFF",
}

# Node color by opcode category
NODE_COLOR = {
    "LOAD":         WONG["sky"],
    "STORE":        WONG["green"],
    "BRANCH_COND":  WONG["orange"],
    "BRANCH_UNCOND":WONG["orange"],
    "CALL":         WONG["purple"],
    "CALL_INDIRECT":WONG["vermilion"],
    "RET":          WONG["vermilion"],
    "JUMP_INDIRECT":WONG["vermilion"],
    "COMPARE":      WONG["yellow"],
    "ARITHMETIC":   WONG["lgray"],
    "LOGIC":        WONG["lgray"],
    "SHIFT":        WONG["lgray"],
    "MOVE":         WONG["lgray"],
    "FENCE":        WONG["blue"],
    "CACHE":        WONG["black"],
    "TIMING":       WONG["purple"],
    "STACK":        WONG["mgray"],
    "NOP":          WONG["white"],
    "OTHER":        WONG["lgray"],
}
NODE_TEXT_COLOR = {k: ("#FFFFFF" if v in (WONG["black"], WONG["blue"], WONG["vermilion"],
                                           WONG["purple"], WONG["mgray"], WONG["dgray"])
                        else "#000000")
                   for k, v in NODE_COLOR.items()}

# Edge style by type
EDGE_STYLE = {
    "DATA_DEP":         dict(color=WONG["sky"],      lw=1.8, style="solid",  alpha=0.85),
    "CONTROL_FLOW":     dict(color=WONG["lgray"],    lw=1.2, style="solid",  alpha=0.6),
    "SPEC_CONDITIONAL": dict(color=WONG["orange"],   lw=2.0, style="dashed", alpha=0.9),
    "SPEC_INDIRECT":    dict(color=WONG["vermilion"],lw=2.2, style="dashed", alpha=0.9),
    "SPEC_RETURN":      dict(color=WONG["purple"],   lw=2.2, style="dashed", alpha=0.9),
    "MEMORY_ORDER":     dict(color=WONG["green"],    lw=1.6, style="dotted", alpha=0.85),
    "CACHE_TEMPORAL":   dict(color=WONG["black"],    lw=1.8, style="dashed", alpha=0.85),
    "FENCE_BOUNDARY":   dict(color=WONG["blue"],     lw=2.0, style="dashed", alpha=0.85),
    "RSB_CHAIN":        dict(color=WONG["vermilion"],lw=2.5, style=(0,(3,1,1,1)), alpha=1.0),
}

# Reverse maps
INV_EDGE = {v: k for k, v in EDGE_TYPES.items()}
INV_OPCODE = {v: k for k, v in OPCODE_CATEGORIES.items()}


# ---------------------------------------------------------------------------
# Hierarchical layout
# ---------------------------------------------------------------------------

def hierarchical_layout(nodes, edge_list, node_ids):
    """
    Assign x (column=depth) and y (row within column) to each node.
    Uses longest-path layering for a DAG; cycles are broken by ignoring back-edges.
    Returns dict {node_id: (x, y)}.
    """
    n = len(node_ids)
    id_to_idx = {nid: i for i, nid in enumerate(node_ids)}

    # Build adjacency for DAG (ignore CONTROL_FLOW to get cleaner layout)
    adj = defaultdict(list)
    radj = defaultdict(list)
    for (src, dst, etype) in edge_list:
        if etype != EDGE_TYPES["CONTROL_FLOW"]:
            adj[src].append(dst)
            radj[dst].append(src)

    # Longest-path layering via topological sort on DAG
    in_deg = defaultdict(int)
    for (src, dst, etype) in edge_list:
        if etype != EDGE_TYPES["CONTROL_FLOW"]:
            in_deg[dst] += 1
    queue = deque(nid for nid in node_ids if in_deg[nid] == 0)
    layer = {nid: 0 for nid in node_ids}
    topo = []
    visited = set()
    while queue:
        nid = queue.popleft()
        if nid in visited:
            continue
        visited.add(nid)
        topo.append(nid)
        for dst in adj[nid]:
            layer[dst] = max(layer[dst], layer[nid] + 1)
            in_deg[dst] -= 1
            if in_deg[dst] == 0:
                queue.append(dst)
    # Nodes not reached (cycles)
    for nid in node_ids:
        if nid not in visited:
            layer[nid] = 0

    # Also assign by sequential order as fallback
    seq_layer = {nid: i for i, nid in enumerate(node_ids)}
    for nid in node_ids:
        if layer[nid] == 0 and seq_layer[nid] > 0:
            layer[nid] = seq_layer[nid]

    # Group by layer
    by_layer = defaultdict(list)
    for nid in node_ids:
        by_layer[layer[nid]].append(nid)

    max_layer = max(by_layer.keys()) if by_layer else 0
    pos = {}
    for l, nids in by_layer.items():
        x = l / max(max_layer, 1)
        for j, nid in enumerate(nids):
            y = (j + 0.5) / len(nids)
            pos[nid] = (x, y)
    return pos


# ---------------------------------------------------------------------------
# Draw a single PDG onto an Axes
# ---------------------------------------------------------------------------

def draw_pdg(ax, sequence, true_label, title_suffix=""):
    builder = PDGBuilder()
    try:
        pdg = builder.build(sequence)
    except Exception as e:
        ax.text(0.5, 0.5, f"Build failed:\n{e}", ha="center", va="center",
                transform=ax.transAxes, fontsize=7)
        ax.set_title(f"{true_label}{title_suffix}", fontsize=8, fontweight="bold")
        return

    if pdg is None or not pdg.nodes:
        ax.text(0.5, 0.5, "(empty graph)", ha="center", va="center",
                transform=ax.transAxes, fontsize=7)
        ax.set_title(f"{true_label}{title_suffix}", fontsize=8, fontweight="bold")
        return

    nodes = pdg.nodes
    node_ids = [n.id for n in nodes]
    edge_list = [(e.src, e.dst, e.edge_type) for e in pdg.edges]

    pos = hierarchical_layout(nodes, edge_list, node_ids)

    # --- Draw edges ---
    drawn_etypes = set()
    for (src, dst, etype) in edge_list:
        if src not in pos or dst not in pos:
            continue
        etype_name = INV_EDGE.get(etype, "OTHER")
        style = EDGE_STYLE.get(etype_name, dict(color=WONG["lgray"], lw=1.0,
                                                  style="solid", alpha=0.5))
        x0, y0 = pos[src]
        x1, y1 = pos[dst]
        # Slight curve for multiple edges between same pair
        ax.annotate("",
            xy=(x1, y1), xytext=(x0, y0),
            arrowprops=dict(
                arrowstyle="-|>",
                color=style["color"],
                lw=style["lw"],
                linestyle=style["style"],
                alpha=style["alpha"],
                connectionstyle="arc3,rad=0.15",
            ),
            zorder=2,
        )
        drawn_etypes.add(etype_name)

    # --- Draw nodes ---
    node_radius = 0.025
    for node in nodes:
        x, y = pos[node.id]
        cat_name = INV_OPCODE.get(node.opcode_category, "OTHER")
        facecolor = NODE_COLOR.get(cat_name, WONG["lgray"])
        textcolor = NODE_TEXT_COLOR.get(cat_name, "#000000")
        edgecolor = WONG["dgray"] if facecolor != WONG["white"] else WONG["mgray"]

        circle = plt.Circle((x, y), node_radius, color=facecolor,
                             ec=edgecolor, lw=0.8, zorder=3)
        ax.add_patch(circle)

        # Label: abbreviated opcode
        raw = node.raw_instruction.strip().split()[0] if node.raw_instruction.strip() else "?"
        label = raw[:6]
        ax.text(x, y, label, ha="center", va="center",
                fontsize=4.5, color=textcolor, fontweight="bold", zorder=4,
                fontfamily="monospace")

    ax.set_xlim(-0.08, 1.08)
    ax.set_ylim(-0.08, 1.08)
    ax.set_aspect("equal")
    ax.axis("off")

    # Title with true label
    short_label = true_label.replace("SPECTRE_", "S-").replace("BRANCH_HISTORY_INJECTION", "BHI")
    ax.set_title(f"{short_label}{title_suffix}\n({len(nodes)} nodes, {len(edge_list)} edges)",
                 fontsize=8, fontweight="bold", pad=4)

    return drawn_etypes


# ---------------------------------------------------------------------------
# Legend helpers
# ---------------------------------------------------------------------------

def make_legend_handles():
    node_handles = [
        mpatches.Patch(facecolor=WONG["sky"],       ec=WONG["dgray"], label="LOAD"),
        mpatches.Patch(facecolor=WONG["green"],      ec=WONG["dgray"], label="STORE"),
        mpatches.Patch(facecolor=WONG["orange"],     ec=WONG["dgray"], label="BRANCH"),
        mpatches.Patch(facecolor=WONG["vermilion"],  ec=WONG["dgray"], label="RET / IND.JMP / CALL_IND"),
        mpatches.Patch(facecolor=WONG["purple"],     ec=WONG["dgray"], label="CALL / TIMING"),
        mpatches.Patch(facecolor=WONG["blue"],       ec=WONG["dgray"], label="FENCE"),
        mpatches.Patch(facecolor=WONG["black"],      ec=WONG["dgray"], label="CACHE"),
        mpatches.Patch(facecolor=WONG["yellow"],     ec=WONG["dgray"], label="COMPARE"),
        mpatches.Patch(facecolor=WONG["mgray"],      ec=WONG["dgray"], label="STACK"),
        mpatches.Patch(facecolor=WONG["lgray"],      ec=WONG["dgray"], label="ALU / MOVE"),
        mpatches.Patch(facecolor=WONG["white"],      ec=WONG["mgray"], label="NOP"),
    ]
    edge_handles = []
    for ename, style in EDGE_STYLE.items():
        edge_handles.append(Line2D([0], [0],
            color=style["color"], lw=style["lw"],
            linestyle=style["style"] if isinstance(style["style"], str) else "dashed",
            alpha=style["alpha"],
            label=ename.replace("_", " ")))
    return node_handles, edge_handles


# ---------------------------------------------------------------------------
# Load test sequences
# ---------------------------------------------------------------------------

def load_test_by_idx(indices):
    result = {}
    test_path = Path(__file__).resolve().parent.parent / "v54" / "data" / "v54_test.jsonl"
    with open(test_path) as f:
        for i, line in enumerate(f):
            if i in indices:
                r = json.loads(line)
                result[i] = r
    return result


# ---------------------------------------------------------------------------
# Figure 1: L1TF [1055]  vs  MDS [321]
# Same clflush + shl $6 + indexed-load timing pattern → structural confusion
# ---------------------------------------------------------------------------

def make_figure_l1tf_mds():
    samples = load_test_by_idx({1055, 321})
    l1tf_r = samples[1055]
    mds_r  = samples[321]

    fig = plt.figure(figsize=(13, 5.5))
    fig.patch.set_facecolor("white")

    # 2 PDG axes + 1 narrow legend axis
    gs = fig.add_gridspec(1, 3, width_ratios=[5, 5, 2.5], wspace=0.05, left=0.02, right=0.98,
                          top=0.88, bottom=0.02)
    ax_l = fig.add_subplot(gs[0])
    ax_r = fig.add_subplot(gs[1])
    ax_leg = fig.add_subplot(gs[2])

    draw_pdg(ax_l, l1tf_r["sequence"], "L1TF",
             f"\n(true label, {l1tf_r['arch']})")
    draw_pdg(ax_r,  mds_r["sequence"],  "MDS",
             f"\n(frequently confused, {mds_r['arch']})")

    # Annotation arrows between the two axes explaining confusion
    fig.text(0.50, 0.93,
             "L1TF ↔ MDS Confusion: Both use clflush + shlq $6 + indexed load.\n"
             "Only the $2^{12}$ page-stride shift (L1TF) vs. verw+mfence (MDS) distinguishes them.",
             ha="center", va="top", fontsize=8,
             bbox=dict(boxstyle="round,pad=0.3", fc="#FFF8E8", ec=WONG["orange"], lw=1.2))

    # Legend
    ax_leg.axis("off")
    node_handles, edge_handles = make_legend_handles()
    leg1 = ax_leg.legend(handles=node_handles, title="Node category",
                         loc="upper left", fontsize=6, title_fontsize=7,
                         framealpha=0.95, edgecolor=WONG["mgray"])
    ax_leg.add_artist(leg1)
    ax_leg.legend(handles=edge_handles, title="Edge type",
                  loc="lower left", fontsize=6, title_fontsize=7,
                  framealpha=0.95, edgecolor=WONG["mgray"])

    out = OUT_DIR / "pdg_l1tf_mds.png"
    fig.savefig(out, dpi=200, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"Saved {out}")


# ---------------------------------------------------------------------------
# Figure 2: INCEPTION [1663]  vs  RETBLEED [631]
# Both use ret; INCEPTION adds dense RSB_CHAIN edges from call/ret pairs
# ---------------------------------------------------------------------------

def make_figure_inception_retbleed():
    samples = load_test_by_idx({1663, 631})
    inc_r = samples[1663]
    ret_r = samples[631]

    fig = plt.figure(figsize=(13, 5.5))
    fig.patch.set_facecolor("white")

    gs = fig.add_gridspec(1, 3, width_ratios=[5, 5, 2.5], wspace=0.05, left=0.02, right=0.98,
                          top=0.88, bottom=0.02)
    ax_l = fig.add_subplot(gs[0])
    ax_r = fig.add_subplot(gs[1])
    ax_leg = fig.add_subplot(gs[2])

    draw_pdg(ax_l, inc_r["sequence"], "INCEPTION",
             f"\n(true label, {inc_r['arch']})")
    draw_pdg(ax_r,  ret_r["sequence"],  "RETBLEED",
             f"\n(frequently confused, {ret_r['arch']})")

    fig.text(0.50, 0.93,
             "INCEPTION ↔ RETBLEED Confusion: Both contain ret instructions.\n"
             "INCEPTION's dense call/ret pairs create RSB_CHAIN edges (vermilion dash-dot);\n"
             "RETBLEED's single ret with NOP padding has none.",
             ha="center", va="top", fontsize=8,
             bbox=dict(boxstyle="round,pad=0.3", fc="#F0F8FF", ec=WONG["blue"], lw=1.2))

    ax_leg.axis("off")
    node_handles, edge_handles = make_legend_handles()
    leg1 = ax_leg.legend(handles=node_handles, title="Node category",
                         loc="upper left", fontsize=6, title_fontsize=7,
                         framealpha=0.95, edgecolor=WONG["mgray"])
    ax_leg.add_artist(leg1)
    ax_leg.legend(handles=edge_handles, title="Edge type",
                  loc="lower left", fontsize=6, title_fontsize=7,
                  framealpha=0.95, edgecolor=WONG["mgray"])

    out = OUT_DIR / "pdg_inception_retbleed.png"
    fig.savefig(out, dpi=200, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"Saved {out}")


# ---------------------------------------------------------------------------
# Figure 3: BHI [23]  vs  SPECTRE_V2 (shortest)
# Both use indirect branch; BHI has dispatch table poisoning
# ---------------------------------------------------------------------------

def make_figure_bhi_v2():
    # Find shortest SPECTRE_V2 sample
    v2_idx = None
    v2_min_len = 999
    bhi_idx = 23
    test_path = Path(__file__).resolve().parent.parent / "v54" / "data" / "v54_test.jsonl"
    with open(test_path) as f:
        for i, line in enumerate(f):
            r = json.loads(line)
            if r["label"] == "SPECTRE_V2" and len(r["sequence"]) < v2_min_len and r["arch"] == "x86_64":
                v2_min_len = len(r["sequence"])
                v2_idx = i

    samples = load_test_by_idx({bhi_idx, v2_idx})
    bhi_r = samples[bhi_idx]
    v2_r  = samples[v2_idx]

    fig = plt.figure(figsize=(13, 5.5))
    fig.patch.set_facecolor("white")

    gs = fig.add_gridspec(1, 3, width_ratios=[5, 5, 2.5], wspace=0.05, left=0.02, right=0.98,
                          top=0.88, bottom=0.02)
    ax_l = fig.add_subplot(gs[0])
    ax_r = fig.add_subplot(gs[1])
    ax_leg = fig.add_subplot(gs[2])

    draw_pdg(ax_l, bhi_r["sequence"], "BHI",
             f"\n(true label, {bhi_r['arch']})")
    draw_pdg(ax_r,  v2_r["sequence"],  "SPECTRE_V2",
             f"\n(frequently confused, {v2_r['arch']})")

    fig.text(0.50, 0.93,
             "BHI ↔ SPECTRE_V2 Confusion: Both center on an indirect branch (SPEC_INDIRECT, vermilion).\n"
             "BHI loads a dispatch-table pointer before jmpq* (two-hop SPEC_INDIRECT); "
             "V2 fans SPEC_INDIRECT to all post-branch nodes.",
             ha="center", va="top", fontsize=8,
             bbox=dict(boxstyle="round,pad=0.3", fc="#F8F0FF", ec=WONG["purple"], lw=1.2))

    ax_leg.axis("off")
    node_handles, edge_handles = make_legend_handles()
    leg1 = ax_leg.legend(handles=node_handles, title="Node category",
                         loc="upper left", fontsize=6, title_fontsize=7,
                         framealpha=0.95, edgecolor=WONG["mgray"])
    ax_leg.add_artist(leg1)
    ax_leg.legend(handles=edge_handles, title="Edge type",
                  loc="lower left", fontsize=6, title_fontsize=7,
                  framealpha=0.95, edgecolor=WONG["mgray"])

    out = OUT_DIR / "pdg_bhi_v2.png"
    fig.savefig(out, dpi=200, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"Saved {out}")


if __name__ == "__main__":
    print("Generating PDG figures...")
    make_figure_l1tf_mds()
    make_figure_inception_retbleed()
    make_figure_bhi_v2()
    print("Done.")
