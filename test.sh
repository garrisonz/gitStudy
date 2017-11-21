#!/bin/bash

set -e

dirs=("PitaCore" "PitaLib" "PitaFramework")
dirs_cp=("${dirs[@]}")                            # copy dirs
for i;
do
    dir=$(echo $i | cut -d ':' -f 1)
#    echo $dir
    cd $dir
    tag=$(echo $i | cut -d ':' -f 2)
#    echo $tag

    dirs=("${dirs[@]/$dir}")
    cd ..
done

#remove empty elements in dirs
for i in "${!dirs[@]}";
do
    if [ -z "${dirs[i]}" ]; then
        unset dirs[$i]
    fi
done

for dir in "${dirs[@]}"
do
    cd $dir
    pwd
    cd ..
done

echo
for dir in "${dirs_cp[@]}"
do
    cd $dir
    pwd
    cd ..
done



