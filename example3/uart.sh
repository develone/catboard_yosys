#!/bin/bash
rm -f iceriver/catboard.blif
yosys -q -p "synth_ice40 -blif iceriver/catboard.blif" iceriver/catboard.v 



