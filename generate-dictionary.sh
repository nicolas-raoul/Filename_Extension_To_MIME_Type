#!/bin/bash

wget http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types
TMP=`mktemp`
grep -v "#" mime.types | tr "\t" " " | while IFS= read -r line
do
   MIME=`echo $line | cut -f 1 -d " "`
   for w in `echo "$line" | cut -d" " -f2-`
   do
      echo $w $MIME >> $TMP
   done
done
sort $TMP
