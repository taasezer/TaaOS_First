#!/bin/bash
# Build script for TaaOS Cursors

# 1. Generate SVGs
python3 generate-cursors.py

# 2. Convert to PNG (requires imagemagick or inkscape)
# This is a placeholder command. In a real env:
# for i in *.svg; do inkscape $i --export-type=png; done

# 3. Generate X11 Cursors (requires xcursorgen)
# xcursorgen cursor.conf left_ptr

echo "Cursor source files generated. Run with 'make' in a proper build environment."
