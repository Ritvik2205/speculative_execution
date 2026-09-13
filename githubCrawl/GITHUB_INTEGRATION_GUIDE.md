# GitHub Integration Guide
## Using Robust Vulnerability Detection with Crawled Repositories

This guide shows you how to use the robust vulnerability detection system with the GitHub repositories and compiled assembly code you've already crawled.

## 🎯 Overview

The `GitHubVulnerabilityScanner` integrates all the components:
- **GitHub Repositories** (from `github_repos.txt`)
- **Compiled Assembly Code** (from `assembly_outputs/`)
- **Robust Vulnerability Detection** (ensemble detector)
- **Results Database** (SQLite for storing findings)

## 🚀 Quick Start

### 1. **Basic Scan**
```bash
# Run the GitHub vulnerability scanner
python github_vulnerability_scanner.py
```

This will:
- Load repositories from `github_repos.txt`
- Discover assembly files in `assembly_outputs/`
- Train the vulnerability detectors
- Scan up to 20 assembly files (configurable)
- Generate a comprehensive report

### 2. **Custom Scan**
```python
from github_vulnerability_scanner import GitHubVulnerabilityScanner

scanner = GitHubVulnerabilityScanner()

# Run full scan with custom parameters
results = scanner.run_full_scan(
    detector_type="ensemble",  # "robust", "semantic", or "ensemble"
    max_files=100             # Number of files to scan
)
```

## 📁 File Structure Expected

Your `githubCrawl/` directory should contain:

```
githubCrawl/
├── github_repos.txt                    # GitHub repository URLs
├── repos/                              # Cloned repositories
│   └── owner/
│       └── repo_name/
├── assembly_outputs/                   # Compiled assembly code
│   └── x86_64/                        # Architecture
│       └── gcc/                       # Compiler
│           └── O2/                    # Optimization level
│               └── *.s               # Assembly files
├── github_vulnerability_scanner.py    # Main scanner
└── robust_vulnerability_detector.py   # Detection engine
```

## 🔧 Configuration Options

Edit the configuration in `GitHubVulnerabilityScanner.__init__()`:

```python
self.config = {
    'max_repos_to_scan': 100,              # Maximum repositories to process
    'min_confidence_threshold': 0.4,       # Minimum confidence for reporting
    'supported_architectures': ['x86_64', 'arm64'],
    'assembly_file_extensions': ['.s', '.asm'],
    'max_file_size_mb': 10,               # Skip files larger than this
    'batch_size': 10                      # Process files in batches
}
```

## 📊 Output and Results

### 1. **SQLite Database** (`vulnerability_scan_results.db`)
Contains three tables:
- `repositories`: Repository metadata
- `assembly_files`: Assembly file information  
- `vulnerabilities`: Detected vulnerabilities with full details

### 2. **JSON Report** (`github_vulnerability_scan_report.json`)
```json
{
  "scan_summary": {
    "total_files": 20,
    "scanned_files": 18,
    "total_vulnerabilities": 12,
    "vulnerabilities_by_type": {
      "SPECTRE_V1": 5,
      "INCEPTION": 3,
      "MDS": 4
    }
  },
  "top_vulnerable_repositories": {
    "owner/repo1": 8,
    "owner/repo2": 4
  },
  "high_risk_vulnerabilities": [...]
}
```

### 3. **Log File** (`vulnerability_scan.log`)
Detailed logging of the scanning process.

## 🎯 Usage Scenarios

### Scenario 1: Security Audit of Open Source Projects
```python
scanner = GitHubVulnerabilityScanner()

# Focus on high-star repositories
repos = scanner.load_github_repositories()
high_star_repos = [r for r in repos if r.stars > 1000]

# Scan with high confidence threshold
scanner.config['min_confidence_threshold'] = 0.7
results = scanner.run_full_scan(detector_type="ensemble")
```

### Scenario 2: Research on Vulnerability Patterns
```python
scanner = GitHubVulnerabilityScanner()

# Scan with all detectors for comparison
for detector in ["robust", "semantic", "ensemble"]:
    print(f"Scanning with {detector} detector...")
    results = scanner.run_full_scan(detector_type=detector, max_files=50)
```

### Scenario 3: Continuous Monitoring
```python
import schedule
import time

def daily_scan():
    scanner = GitHubVulnerabilityScanner()
    results = scanner.run_full_scan(max_files=200)
    # Send alerts for CRITICAL vulnerabilities
    
schedule.every().day.at("02:00").do(daily_scan)

while True:
    schedule.run_pending()
    time.sleep(1)
```

## 🔍 Querying Results

### SQL Queries for Analysis

```sql
-- Top 10 most vulnerable repositories
SELECT repository, COUNT(*) as vuln_count 
FROM vulnerabilities 
GROUP BY repository 
ORDER BY vuln_count DESC 
LIMIT 10;

-- High-risk vulnerabilities by type
SELECT vulnerability_type, COUNT(*) as count
FROM vulnerabilities 
WHERE risk_level IN ('CRITICAL', 'HIGH')
GROUP BY vulnerability_type;

-- Recent vulnerabilities
SELECT * FROM vulnerabilities 
WHERE timestamp > datetime('now', '-7 days')
ORDER BY confidence DESC;
```

### Python Analysis

```python
import sqlite3
import pandas as pd

# Load results into pandas
conn = sqlite3.connect('vulnerability_scan_results.db')
df = pd.read_sql_query("SELECT * FROM vulnerabilities", conn)

# Analyze patterns
print("Vulnerability distribution by type:")
print(df['vulnerability_type'].value_counts())

print("\nTop repositories by vulnerability count:")
print(df['repository'].value_counts().head(10))

print("\nHigh-confidence vulnerabilities:")
high_conf = df[df['confidence'] > 0.8]
print(high_conf[['repository', 'vulnerability_type', 'confidence']])
```

## ⚡ Performance Optimization

### 1. **Parallel Processing**
```python
from multiprocessing import Pool
import functools

def scan_file_parallel(args):
    scanner, asm_file, detector_type = args
    return scanner.scan_assembly_file(asm_file, detector_type)

# Use multiprocessing for large scans
scanner = GitHubVulnerabilityScanner()
assembly_files = scanner.discover_assembly_files()

with Pool(processes=4) as pool:
    args = [(scanner, f, "ensemble") for f in assembly_files]
    results = pool.map(scan_file_parallel, args)
```

### 2. **Incremental Scanning**
```python
# Only scan new/modified files
scanner = GitHubVulnerabilityScanner()

# Track processed files in database
conn = sqlite3.connect(scanner.db_path)
processed_files = set(pd.read_sql_query(
    "SELECT filepath FROM assembly_files WHERE processed = 1", 
    conn
)['filepath'])

# Only scan unprocessed files
assembly_files = scanner.discover_assembly_files()
new_files = [f for f in assembly_files if f.filepath not in processed_files]

results = scanner.run_scan_on_files(new_files)
```

## 🚨 Alert System

### Email Alerts for Critical Vulnerabilities
```python
import smtplib
from email.mime.text import MIMEText

def send_vulnerability_alert(matches):
    critical_vulns = [m for m in matches if m.risk_level == 'CRITICAL']
    
    if critical_vulns:
        msg = MIMEText(f"Found {len(critical_vulns)} critical vulnerabilities!")
        msg['Subject'] = 'Critical Vulnerabilities Detected'
        msg['From'] = 'scanner@yourcompany.com'
        msg['To'] = 'security@yourcompany.com'
        
        # Send email (configure SMTP settings)
        # server = smtplib.SMTP('localhost')
        # server.send_message(msg)
```

### Slack Integration
```python
import requests

def send_slack_notification(scan_stats):
    webhook_url = "YOUR_SLACK_WEBHOOK_URL"
    
    message = {
        "text": f"Vulnerability Scan Complete: Found {scan_stats['total_vulnerabilities']} vulnerabilities in {scan_stats['scanned_files']} files"
    }
    
    requests.post(webhook_url, json=message)
```

## 🔬 Advanced Analysis

### 1. **Trend Analysis**
```python
# Track vulnerability trends over time
def analyze_trends():
    conn = sqlite3.connect('vulnerability_scan_results.db')
    
    # Monthly vulnerability counts
    monthly_stats = pd.read_sql_query("""
        SELECT 
            strftime('%Y-%m', timestamp) as month,
            vulnerability_type,
            COUNT(*) as count
        FROM vulnerabilities 
        GROUP BY month, vulnerability_type
        ORDER BY month
    """, conn)
    
    return monthly_stats
```

### 2. **Repository Risk Scoring**
```python
def calculate_repo_risk_score(repo_name):
    conn = sqlite3.connect('vulnerability_scan_results.db')
    
    vulns = pd.read_sql_query(
        "SELECT * FROM vulnerabilities WHERE repository = ?", 
        conn, params=[repo_name]
    )
    
    # Risk scoring algorithm
    risk_weights = {'CRITICAL': 10, 'HIGH': 5, 'MEDIUM': 2, 'LOW': 1}
    total_risk = sum(risk_weights.get(v['risk_level'], 0) for _, v in vulns.iterrows())
    
    return total_risk
```

## 🛠️ Troubleshooting

### Common Issues:

1. **No assembly files found**
   - Check that `assembly_outputs/` directory exists
   - Verify the directory structure matches expected format
   - Run `compile_to_asm.py` first if needed

2. **Detector training fails**
   - Ensure `../c_vulns/asm_code/` directory exists with vulnerable assembly files
   - Check that scikit-learn and other dependencies are installed

3. **Low detection accuracy**
   - Adjust `min_confidence_threshold` in configuration
   - Try different detector types (`robust`, `semantic`, `ensemble`)
   - Retrain with more diverse vulnerability examples

4. **Performance issues**
   - Reduce `max_files` parameter for testing
   - Use parallel processing for large scans
   - Increase `max_file_size_mb` limit if needed

## 📈 Next Steps

1. **Expand Training Data**: Add more vulnerability examples to improve accuracy
2. **Custom Patterns**: Add organization-specific vulnerability patterns
3. **Integration**: Connect with CI/CD pipelines for automatic scanning
4. **Visualization**: Build dashboards for vulnerability tracking
5. **Machine Learning**: Implement active learning to improve detection over time

This integration provides a complete end-to-end solution for identifying vulnerabilities in real-world GitHub repositories using your robust detection system!