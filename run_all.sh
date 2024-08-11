#!/bin/bash

for dir in */; do
    echo -e "\n\n--------[ $dir ]--------"

    cd "$dir" || continue

    for file in *.zig; do
        echo -e "\n\nRun: $file"
        zig run "$file"
    done

    cd ..
done
