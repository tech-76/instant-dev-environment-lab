#!/usr/bin/env python3

"""
main.py
Project: instant-dev-environment-lab

Purpose:
Print basic system and environment information, then perform simple
beginner-friendly troubleshooting checks.

This script is intended for portfolio practice and learning.
"""

import os
import platform
import shutil
import socket
import subprocess
import sys
from datetime import datetime


def print_section(title):
    """Print a clean section heading."""
    print("\n" + "=" * 60)
    print(title)
    print("=" * 60)


def check_command(command):
    """Check whether a command is available in the environment."""
    path = shutil.which(command)
    if path:
        print(f"PASS: {command} found at {path}")
        return True

    print(f"FAIL: {command} was not found in PATH")
    return False


def run_command(command):
    """Run a command safely and return the output."""
    try:
        result = subprocess.run(
            command,
            capture_output=True,
            text=True,
            check=False
        )
        return result.returncode, result.stdout.strip(), result.stderr.strip()
    except FileNotFoundError:
        return 1, "", f"Command not found: {command[0]}"


def check_dns_lookup(hostname):
    """Check whether a hostname can resolve to an IP address."""
    try:
        ip_address = socket.gethostbyname(hostname)
        print(f"PASS: DNS lookup for {hostname} resolved to {ip_address}")
        return True
    except socket.gaierror:
        print(f"FAIL: DNS lookup for {hostname} did not resolve")
        return False


def main():
    print_section("Instant Dev Environment Lab - Python Environment Check")

    print(f"Check time: {datetime.now().isoformat(timespec='seconds')}")
    print(f"Python version: {sys.version.split()[0]}")
    print(f"Operating system: {platform.system()} {platform.release()}")
    print(f"Machine type: {platform.machine()}")
    print(f"Current user: {os.environ.get('USER', 'Unknown')}")
    print(f"Current folder: {os.getcwd()}")

    print_section("Command Availability Checks")

    commands_to_check = [
        "git",
        "node",
        "npm",
        "python3",
        "curl",
        "ping",
        "tree"
    ]

    command_results = [check_command(command) for command in commands_to_check]

    print_section("Network and DNS Checks")

    dns_result = check_dns_lookup("github.com")

    print("\nTesting curl command against GitHub headers...")
    curl_code, curl_output, curl_error = run_command(["curl", "-I", "https://github.com"])


    if curl_code == 0:
        first_line = curl_output.splitlines()[0] if curl_output else "No output returned"
        print(f"PASS: curl reached GitHub. Response: {first_line}")
        curl_result = True
    else:
        print("FAIL: curl could not reach GitHub.")
        if curl_error:
            print(f"Details: {curl_error}")
        curl_result = False

    print_section("Summary")

    all_checks = command_results + [dns_result, curl_result]

    if all(all_checks):
        print("PASS: Basic environment checks completed successfully.")
        print("The environment appears ready for beginner lab work.")
        return 0

    print("FAIL: One or more checks did not pass.")
    print("Review the failed items above and check the dev container setup.")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
