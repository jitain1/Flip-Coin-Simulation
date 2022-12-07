#!/bin/bash

count1=0;
count2=0;

while [[ $count1 -le 20 && $count2 -le 20 ]]

do
        coin=$((RANDOM%2))
        if [ $coin = 0 ]; then
                echo "Head"
                count1=$(( $count1 + 1 ));
        else
                echo "Tail"
                count2=$(( $count2 + 1 ));
        fi
done

echo "Total head count = $count1"
echo "Total tail count = $count2"

if [ $count1 -gt $count2 ]; then
        diff=$(( $count1 - $count2 ))
        echo "Head is win by $diff"
elif [ $count1 -lt $count2 ]; then
        diff=$(( $count2 - $count1 ))
        echo "Tail is win by $diff"

else
        tie=true;
        echo "Result = TIE"
fi
