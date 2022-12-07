#!/bin/bash

#UC2
for (( i=0; i<10; i++ ))
do
        coin=$((RANDOM%2))

        if [ $coin -eq 0 ]; then
                echo "Head"
        else
                echo "Tail"
        fi
done
