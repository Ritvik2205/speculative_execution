"""Tests for the --hf-lang staging filter in build_pretrain_corpus_from_c.

The only public C dataset that still streams through this loader
(the-stack-smol-xl) is whole-file and multi-language -- its leading rows are
Ada/etc. `_row_lang_ok` is the pure predicate that keeps C and drops the rest;
these tests pin its behaviour without touching the network.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from gen.build_pretrain_corpus_from_c import _row_lang_ok  # noqa: E402

C = {"c"}


def test_no_filter_keeps_everything():
    assert _row_lang_ok({"lang": "Ada"}, None) is True
    assert _row_lang_ok({}, None) is True


def test_lang_field_matches_c_case_insensitively():
    assert _row_lang_ok({"lang": "C"}, C) is True
    assert _row_lang_ok({"lang": "c"}, C) is True
    assert _row_lang_ok({"language_name": "C"}, C) is True


def test_lang_field_drops_non_c():
    assert _row_lang_ok({"lang": "Ada"}, C) is False
    assert _row_lang_ok({"lang": "Python"}, C) is False
    # C++ is not C: gcc-as-C won't reliably compile it, so exclude it.
    assert _row_lang_ok({"lang": "C++"}, C) is False


def test_extension_fallback_when_no_lang_field():
    # the-stack rows also carry ext / a repo path; .c and .h count as C.
    assert _row_lang_ok({"ext": "c"}, C) is True
    assert _row_lang_ok({"ext": "h"}, C) is True
    assert _row_lang_ok({"max_stars_repo_path": "src/util.c"}, C) is True
    assert _row_lang_ok({"ext": "py"}, C) is False


def test_row_with_no_tag_is_kept():
    # A single-function dataset with only a code field (no lang/ext) can't be
    # disproven -- keep it so those datasets still work under --hf-lang.
    assert _row_lang_ok({"code": "int f(){return 0;}"}, C) is True


def test_lang_beats_absent_ext_but_ext_saves_when_lang_wrong_field():
    # lang says Ada -> a tag WAS seen and didn't match; even a C-ish path here
    # rescues it (any matching field wins).
    assert _row_lang_ok({"lang": "Ada", "max_stars_repo_path": "x.c"}, C) is True
    # lang Ada, path .py -> a tag was seen, nothing matched -> dropped.
    assert _row_lang_ok({"lang": "Ada", "max_stars_repo_path": "x.py"}, C) is False
