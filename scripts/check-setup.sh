#!/usr/bin/env bash
set -euo pipefail

check_command() {
  local command_name="$1"

  if command -v "${command_name}" >/dev/null 2>&1; then
    echo "[OK] ${command_name}: $(command -v "${command_name}")"
  else
    echo "[FEHLT] ${command_name}" >&2
    exit 1
  fi
}

echo "DHBW Data Science – Technikcheck"
echo "================================"
check_command python
check_command git
check_command gh

python hello.py

echo "[OK] Technikcheck bestanden."
