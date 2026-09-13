from gen.synth.tuning_grid import render_grid, grid_points, generate_grid

def test_render_knobs_present():
    leaky = render_grid("SPECTRE_V1", 512, True, 30, 0x53)
    assert "STRIDE 512" in leaky and "_mm_clflush(&array1_size)" in leaky and "SECRET=83" in leaky
    weak = render_grid("SPECTRE_V1", 64, False, 2, 0x53)
    assert "STRIDE 64" in weak and "_mm_clflush(&array1_size)" not in weak  # flush omitted

def test_v4_knobs():
    s = render_grid("SPECTRE_V4", 512, True, 30, 1)
    assert "ssb_victim" in s and "_mm_clflush((void*)&sidx)" in s

def test_grid_enumeration_size():
    pts = grid_points(classes=("SPECTRE_V1","SPECTRE_V4"), strides=(64,512),
                      flushes=(True,False), mistrains=(2,30), secrets=(83,))
    assert len(pts) == 2*2*2*2*1

def test_generate_writes_index(tmp_path):
    rows = generate_grid(str(tmp_path), grid_points(classes=("SPECTRE_V1",),
                         strides=(512,), flushes=(True,), mistrains=(30,), secrets=(83,)))
    assert len(rows) == 1 and rows[0]["stride"] == 512
