#!/bin/bash

coin=$((RANDOM%2))

        if [ $coin -eq 0 ]; then
                echo "Head"
	          (( count1++ ))
        else
                echo "Tail"
		    (( count2++ ))
	fi
