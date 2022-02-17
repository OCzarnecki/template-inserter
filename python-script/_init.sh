#!/usr/bin/bash
# Create a new executable python script with standard scaffolding, and open
# it for editing.

echo -n "File name of script: "
read file_name

mv script.py "$file_name"

nvim +4 "$file_name"
