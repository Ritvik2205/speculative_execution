from oracle.run_oracle import build_record, gem5_binary_for, compiler_for


def _stdout(hit_line, success, actual):
    lines = [f"LINE {i} {40 if i==hit_line else 200}" for i in range(256)]
    if hit_line >= 0:
        lines.append(f"Leaked s (speculatively): x (ASCII {hit_line}), Access Time: 40 cycles")
        if success:
            lines.append("SUCCESS! Leaked the actual s.")
    else:
        lines.append("No s leaked or could not detect leakage.")
    lines.append(f"Actual secret data: {chr(actual)}")
    return "\n".join(lines) + "\n"


def test_leaking_gadget_becomes_positive_record():
    o3 = _stdout(83, True, 83)
    timing = _stdout(-1, False, 83)
    rec = build_record("SPECTRE_V1_x86_64_0", "SPECTRE_V1", "x86_64", 83,
                       o3, timing, "yes", "v24.0.0.0")
    assert rec.recovered_ok is True
    assert rec.snr_o3 > rec.snr_inorder
    assert rec.leak is True
    assert rec.leak_signal > 0
    assert rec.program == "SPECTRE_V1_x86_64_0"


def test_architectural_leak_on_both_cpus_is_not_a_leak():
    same = _stdout(83, True, 83)
    rec = build_record("BENIGN_x86_64_0", "BENIGN", "x86_64", 83,
                       same, same, "yes", "v24.0.0.0")
    assert rec.leak_signal == 0.0
    assert rec.leak is False


def test_routing():
    assert gem5_binary_for("x86_64").endswith("/X86/gem5.opt")
    assert gem5_binary_for("arm64").endswith("/ARM/gem5.opt")
    # container host is arm64 (colima): x86 guest cross-compiled, arm64 guest native
    assert compiler_for("x86_64") == "x86_64-linux-gnu-gcc"
    assert compiler_for("arm64") == "gcc"
