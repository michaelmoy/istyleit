#!/bin/bash

echo -e "Format Verilog file(s): $1"


istyle -O -t3 -p -o -l --pad=all $1
sed -i.orig_end $'s/\tend/\t\tend/g' $1
unix2dos $1
rm *.orig
rm *.orig_end

echo 'Done'

