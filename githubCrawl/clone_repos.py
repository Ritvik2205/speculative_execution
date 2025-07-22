import os
import subprocess
from urllib.parse import urlparse

REPOS_FILE = "github_repos.txt"
CLONE_ROOT = "repos"
LOG_FILE = "clone_failures.txt"

def get_owner_repo(url):
    # Example: https://github.com/torvalds/linux -> ('torvalds', 'linux')
    path = urlparse(url).path.strip("/")
    parts = path.split("/")
    if len(parts) >= 2:
        return parts[0], parts[1]
    return None, None

def clone_repo(repo_url, dest_path):
    if os.path.exists(dest_path):
        print(f"Already exists: {dest_path}, skipping.")
        return True
    try:
        print(f"Cloning {repo_url} into {dest_path} ...")
        subprocess.run(
            ["git", "clone", "--depth", "1", repo_url, dest_path],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
        return True
    except subprocess.CalledProcessError as e:
        print(f"Failed to clone {repo_url}: {e}")
        with open(LOG_FILE, "a") as logf:
            logf.write(f"{repo_url}\n")
        return False

def main():
    if not os.path.exists(CLONE_ROOT):
        os.makedirs(CLONE_ROOT)
    with open(REPOS_FILE, "r") as f:
        for line in f:
            repo_url = line.strip()
            if not repo_url:
                continue
            owner, repo = get_owner_repo(repo_url)
            if not owner or not repo:
                print(f"Invalid repo URL: {repo_url}")
                continue
            dest_path = os.path.join(CLONE_ROOT, owner, repo)
            os.makedirs(os.path.dirname(dest_path), exist_ok=True)
            clone_repo(repo_url, dest_path)

if __name__ == "__main__":
    main()
