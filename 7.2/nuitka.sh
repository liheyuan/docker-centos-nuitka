#!/bin/bash
echo "convert $@ to binary using nuitka"
/usr/bin/env python3 -m nuitka --standalone --follow-imports $@ 
