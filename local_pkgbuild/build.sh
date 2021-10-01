#!/bin/sh
for i in ./*/ ; do (cd "$i" && ./build.sh); done
