#!/bin/bash
files=$(ls)
filesArr=($(echo $files | tr " " "\n"))
mkdir documents pictures video audio
for i in "${filesArr[@]}"
do
    if [[ " $i " == *"mp4"* ]]; then
        mv $i video/
    fi
    
    if [[ " $i " == *"mp3"* ]]; then
        mv $i audio/
    fi

    if [[ " $i " == *"jpg"* ]]; then
        mv $i pictures/
    fi

    if [[ " $i " == *"png"* ]]; then
        mv $i pictures/
    fi

    if [[ " $i " == *"pdf"* ]]; then
        mv $i documents/
    fi

done