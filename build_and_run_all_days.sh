 #!/bin/bash

rm -rf _build
cmake -H. -B_build
cmake --build _build
for folder in "_build/Day*/Day*"
do
    for file in $folder
    do
        echo $file
        ./$file
    done
done