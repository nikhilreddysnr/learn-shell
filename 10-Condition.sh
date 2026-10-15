#!/bin/bash

echo "Please ENter Marks"
read MARKS

if [ $MARKS -lt 33]; then
    echo "You are Failed"
elif [ $MARKS -ge 33 ] && [ $MARKS -lt 50 ]; then
    echo "You are Passed with C Grade"
elif [ $MARKS -ge 50 ] && [ $MARKS -lt 70 ]; then
    echo "You are Passed with B Grade"
else
    echo "You are Passed with A Grade"
fi

echo "END"