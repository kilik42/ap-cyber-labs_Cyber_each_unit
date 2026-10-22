#!/bin/bash
# AP Cybersecurity labs: download evidence into ~/lab1 ... ~/lab6
# Usage:  wget -qO- https://raw.githubusercontent.com/GITHUB_USER/ap-cyber-labs/main/setup.sh | bash
# Or one lab only:  ... | bash -s 4
set -e
USER_REPO="GITHUB_USER/ap-cyber-labs"
TMP=$(mktemp -d)
wget -q "https://github.com/$USER_REPO/archive/refs/heads/main.zip" -O "$TMP/labs.zip"
unzip -q "$TMP/labs.zip" -d "$TMP"
SRC=$(ls -d "$TMP"/*/evidence)
for n in ${@:-1 2 3 4 5 6}; do
  rm -rf "$HOME/lab$n"
  cp -r "$SRC/lab$n" "$HOME/lab$n"
  echo "Ready: ~/lab$n"
done
rm -rf "$TMP"
