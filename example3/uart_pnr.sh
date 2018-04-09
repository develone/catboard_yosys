#!/bin/bash
rm -f iceriver/catboard.txt
arachne-pnr  -d 8k -p iceriver/catboard.pcf -o iceriver/catboard.txt iceriver/catboard.blif

