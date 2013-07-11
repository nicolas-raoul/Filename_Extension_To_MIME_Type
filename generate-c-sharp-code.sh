#!/bin/bash

./generate-dictionary.sh | while IFS= read -r line
do
   echo $line | sed -e "s/\(.*\) \(.*\)/    {\"\\1\", \"\\2\"},/g"
done
