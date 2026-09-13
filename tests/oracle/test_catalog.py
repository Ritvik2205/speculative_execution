from oracle.catalog import classify, catalog_programs, Program

def test_classify_by_filename():
    assert classify("spectre_1.c") == ("SPECTRE_V1", "x86_64")
    assert classify("spectre_2_arm64.c") == ("SPECTRE_V2", "arm64")
    assert classify("mds.c") == ("MDS", "x86_64")
    assert classify("inception_arm64.c") == ("INCEPTION", "arm64")
    assert classify("l1tf.c") == ("L1TF", "x86_64")
    assert classify("bhi.c") == ("BHI", "x86_64")
    assert classify("retbleed.c") == ("RETBLEED", "x86_64")

def test_utils_is_not_a_program(tmp_path):
    (tmp_path / "utils.c").write_text("// include only")
    (tmp_path / "spectre_1.c").write_text('#include "utils.c"\nint main(){}')
    asm = tmp_path / "asm"; asm.mkdir()
    (asm / "spectre_1.s").write_text("")
    (asm / "spectre_1_O2.s").write_text("")
    progs = catalog_programs(str(tmp_path), str(asm))
    names = {p.name for p in progs}
    assert "utils" not in names
    assert "spectre_1" in names

def test_member_files_grouped_by_stem(tmp_path):
    (tmp_path / "mds.c").write_text('#include "utils.c"\nint main(){}')
    asm = tmp_path / "asm"; asm.mkdir()
    for fn in ["mds.s", "mds_gcc_O0.s", "mds_clang_O3.s", "bhi.s"]:
        (asm / fn).write_text("")
    progs = catalog_programs(str(tmp_path), str(asm))
    mds = next(p for p in progs if p.name == "mds")
    assert set(mds.member_files) == {"mds.s", "mds_gcc_O0.s", "mds_clang_O3.s"}
