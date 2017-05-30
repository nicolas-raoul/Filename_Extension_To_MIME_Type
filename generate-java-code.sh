#!/bin/bash

./generate-dictionary.sh | while IFS= read -r line
do
   echo $line | sed -e "s/\(.*\) \(.*\)/        map.put(\"\\1\", \"\\2\");/g"
done
