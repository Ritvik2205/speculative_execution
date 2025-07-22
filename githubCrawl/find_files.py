import os
import re

CLONE_ROOT = "repos"
OUTPUT_FILE = "c_cpp_files.txt"

# File extensions to include
C_CPP_EXTENSIONS = {".c", ".cpp", ".cc", ".h", ".hpp", ".hh"}

# Patterns to exclude (test, example, etc.)
EXCLUDE_PATTERNS = [
    re.compile(r"test", re.IGNORECASE),
    re.compile(r"example", re.IGNORECASE),
    re.compile(r"doc", re.IGNORECASE),
    re.compile(r"benchmark", re.IGNORECASE),
    re.compile(r"third[_-]?party", re.IGNORECASE),
]

def is_relevant_file(filename):
    ext = os.path.splitext(filename)[1]
    if ext not in C_CPP_EXTENSIONS:
        return False
    for pat in EXCLUDE_PATTERNS:
        if pat.search(filename):
            return False
    return True

def find_source_files(repo_root):
    relevant_files = []
    for dirpath, dirnames, filenames in os.walk(repo_root):
        # Exclude directories matching patterns
        if any(pat.search(dirpath) for pat in EXCLUDE_PATTERNS):
            continue
        for fname in filenames:
            if is_relevant_file(fname):
                relevant_files.append(os.path.join(dirpath, fname))
    return relevant_files

def main():
    all_files = []
    for owner in os.listdir(CLONE_ROOT):
        owner_path = os.path.join(CLONE_ROOT, owner)
        if not os.path.isdir(owner_path):
            continue
        for repo in os.listdir(owner_path):
            repo_path = os.path.join(owner_path, repo)
            if not os.path.isdir(repo_path):
                continue
            print(f"Scanning {repo_path} ...")
            files = find_source_files(repo_path)
            if files:
                all_files.extend(files)
    print(f"Found {len(all_files)} C/C++ source/header files.")
    with open(OUTPUT_FILE, "w") as f:
        for path in all_files:
            f.write(path + "\n")
    print(f"File paths saved to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
