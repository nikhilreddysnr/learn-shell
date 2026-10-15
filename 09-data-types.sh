#!/bin/bash

var1=10
var2=20

echo $var1+$var2
echo $((var1+var2))

declare -i COUNT=30
COUNT=COUNT+10
echo "count is $COUNT"
