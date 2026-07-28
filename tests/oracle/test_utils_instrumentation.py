import os, subprocess, tempfile, textwrap, shutil, platform, pytest

UTILS = os.path.join("c_vulns", "c_code", "utils.c")

@pytest.mark.skipif(platform.machine() == "arm64",
                    reason="utils.c uses x86 intrinsics; verified in container (Task 9)")
@pytest.mark.skipif(shutil.which("cc") is None, reason="no C compiler")
def test_gem5_oracle_prints_all_256_lines(tmp_path):
    driver = tmp_path / "drv.c"
    driver.write_text(textwrap.dedent(f'''
        #define GEM5_ORACLE 1
        #include "{os.path.abspath(UTILS)}"
        int main() {{
            probe_array[83 * CACHE_LINE_SIZE] = 1;
            perform_measurement((uint8_t)83, "test secret");
            return 0;
        }}
    '''))
    exe = tmp_path / "drv"
    subprocess.run(["cc", "-O0", str(driver), "-o", str(exe)], check=True)
    out = subprocess.run([str(exe)], capture_output=True, text=True).stdout
    line_ids = {int(l.split()[1]) for l in out.splitlines() if l.startswith("LINE ")}
    assert line_ids == set(range(256))
