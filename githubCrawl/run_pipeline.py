#!/usr/bin/env python3
"""
Master script to run the complete GitHub C/C++ assembly analysis pipeline.
"""

import os
import subprocess
import sys
import time

def run_script(script_name, description):
    """Run a script and handle errors"""
    print(f"\n{'='*60}")
    print(f"Step: {description}")
    print(f"Running: {script_name}")
    print(f"{'='*60}")
    
    try:
        result = subprocess.run([sys.executable, script_name], 
                              cwd=os.path.dirname(os.path.abspath(__file__)),
                              check=True)
        print(f"✅ {description} completed successfully")
        return True
    except subprocess.CalledProcessError as e:
        print(f"❌ {description} failed with exit code {e.returncode}")
        return False
    except FileNotFoundError:
        print(f"❌ Script {script_name} not found")
        return False

def check_dependencies():
    """Check if required dependencies are installed"""
    print("Checking dependencies...")
    
    # Check for required Python packages
    required_packages = ['requests', 'capstone']
    missing_packages = []
    
    for package in required_packages:
        try:
            __import__(package)
            print(f"✅ {package} is installed")
        except ImportError:
            missing_packages.append(package)
            print(f"❌ {package} is missing")
    
    # Check for git
    try:
        subprocess.run(['git', '--version'], capture_output=True, check=True)
        print("✅ git is available")
    except (subprocess.CalledProcessError, FileNotFoundError):
        print("❌ git is not available")
        return False
    
    # Check for compilers
    compilers = ['clang', 'gcc']
    for compiler in compilers:
        try:
            subprocess.run([compiler, '--version'], capture_output=True, check=True)
            print(f"✅ {compiler} is available")
        except (subprocess.CalledProcessError, FileNotFoundError):
            print(f"⚠️  {compiler} is not available")
    
    if missing_packages:
        print(f"\nMissing packages: {', '.join(missing_packages)}")
        print("Install them with: pip install " + " ".join(missing_packages))
        return False
    
    return True

def main():
    print("🚀 Starting GitHub C/C++ Assembly Analysis Pipeline")
    print("This will:")
    print("1. Search GitHub for C/C++ repositories")
    print("2. Clone selected repositories")
    print("3. Find C/C++ source files")
    print("4. Compile to assembly for multiple architectures")
    print("5. Parse and normalize assembly code")
    
    # Check dependencies first
    if not check_dependencies():
        print("\n❌ Dependency check failed. Please install missing dependencies.")
        return 1
    
    # Check for GitHub token
    if not os.getenv("GITHUB_TOKEN"):
        print("\n⚠️  Warning: GITHUB_TOKEN environment variable not set.")
        print("You may hit API rate limits. Set it with:")
        print("export GITHUB_TOKEN=your_token_here")
        input("Press Enter to continue anyway, or Ctrl+C to exit...")
    
    start_time = time.time()
    
    # Pipeline steps
    steps = [
        ("github.py", "Search GitHub repositories"),
        ("clone_repos.py", "Clone repositories"),
        ("find_c_cpp_files.py", "Find C/C++ source files"),
        ("compile_to_asm.py", "Compile to assembly"),
        ("parse_assembly.py", "Parse and normalize assembly"),
    ]
    
    completed_steps = 0
    for script, description in steps:
        if run_script(script, description):
            completed_steps += 1
        else:
            print(f"\n❌ Pipeline failed at step: {description}")
            print("Check the error messages above and fix any issues.")
            break
    
    end_time = time.time()
    duration = end_time - start_time
    
    print(f"\n{'='*60}")
    print(f"Pipeline Summary")
    print(f"{'='*60}")
    print(f"Completed steps: {completed_steps}/{len(steps)}")
    print(f"Total runtime: {duration:.2f} seconds")
    
    if completed_steps == len(steps):
        print("🎉 Pipeline completed successfully!")
        print("\nOutput files:")
        print("- github_repos.txt: List of repository URLs")
        print("- repos/: Cloned repositories")
        print("- c_cpp_files.txt: List of C/C++ source files")
        print("- assembly_outputs/: Compiled assembly files")
        print("- parsed_assembly/: Normalized assembly features")
        print("- compiler_errors.log: Compilation errors")
        return 0
    else:
        print("❌ Pipeline incomplete. Check errors above.")
        return 1

if __name__ == "__main__":
    sys.exit(main()) 