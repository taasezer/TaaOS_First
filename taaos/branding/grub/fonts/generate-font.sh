#!/bin/bash
# Script to generate GRUB font

# Source font (e.g., DejaVuSansMono.ttf or a custom TaaOS font)
SOURCE_FONT="/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"
OUTPUT_FONT="taaos.pf2"

if [ -f "$SOURCE_FONT" ]; then
    echo "Generating $OUTPUT_FONT from $SOURCE_FONT..."
    grub-mkfont -s 24 -o $OUTPUT_FONT $SOURCE_FONT
    echo "Done."
else
    echo "Error: Source font not found at $SOURCE_FONT"
    echo "Please install ttf-dejavu or specify another font."
fi
