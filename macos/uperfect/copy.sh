#!/bin/sh
#
# HOW TO OBTAIN THE IDENTIFIERS
#
# Find Displays:
#   ioreg -lw0 | grep -i "DisplayAttributes"
#
# Look for:
# - LegacyManufacturerID
# - YearOfManufacture
# - WeekOfManufacture
#
# DisplayVendorID = hex(LegacyManufacturerID)
#
# FILE CONTENTS
#
# DisplayPixelDimensions
#   Pack the resolution as uint32 and base64-encode:
#     >>> base64.b64encode(struct.pack('>II', 3840, 2160))
#     b'AAAPAAAACHA='
#

DIR=/Library/Displays/Contents/Resources/Overrides/DisplayVendorID-226a
FILE=DisplayYearManufacture-2021-DisplayWeekManufacture-16

mkdir -p $DIR
cp $FILE $DIR/
