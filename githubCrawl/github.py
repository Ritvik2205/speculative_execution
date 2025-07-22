import os
import requests
import time

# Configuration
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")  # Or paste your token here as a string
OUTPUT_FILE = "github_repos.txt"
SEARCH_QUERY = "(language:C OR language:C++) stars:>100 (kernel OR security OR crypto)"
PER_PAGE = 30  # Max is 100, but 30 is default and safe
MAX_PAGES = 10  # Adjust as needed (API max is 1000 results per search)

headers = {
    "Accept": "application/vnd.github+json",
    "Authorization": f"token {GITHUB_TOKEN}" if GITHUB_TOKEN else None,
    "User-Agent": "github-repo-crawler"
}

def search_github_repos(query, per_page=30, max_pages=10):
    repos = set()
    for page in range(1, max_pages + 1):
        url = "https://api.github.com/search/repositories"
        params = {
            "q": query,
            "sort": "stars",
            "order": "desc",
            "per_page": per_page,
            "page": page
        }
        print(f"Fetching page {page}...")
        resp = requests.get(url, headers=headers, params=params)
        if resp.status_code == 403:
            print("Rate limited. Sleeping for 60 seconds...")
            time.sleep(60)
            continue
        elif resp.status_code != 200:
            print(f"Error: {resp.status_code} {resp.text}")
            break
        data = resp.json()
        for item in data.get("items", []):
            repos.add(item["html_url"])
        if "next" not in resp.links:
            break
        time.sleep(2)  # Be nice to the API
    return repos

def main():
    repos = search_github_repos(SEARCH_QUERY, per_page=PER_PAGE, max_pages=MAX_PAGES)
    print(f"Found {len(repos)} repositories.")
    with open(OUTPUT_FILE, "w") as f:
        for repo in sorted(repos):
            f.write(repo + "\n")
    print(f"Repository URLs saved to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
