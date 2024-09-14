#!/bin/bash

for dir in */; do
    echo -e "\n\n--------[ $dir ]--------"

    cd "$dir" || continue

    if [[ -f "build.zig" ]]; then
        echo -e "\n\nFound build.zig, running: zig build run"
        zig build run
    else
        for file in *.zig; do
            echo -e "\n\nRun: $file"
            zig run "$file"
        done
    fi

    cd ..
done
