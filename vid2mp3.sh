#!/bin/bash
total=`ls | wc -l`
num=1
while [ $num -le $total ]
do
names=`ls | cut -f1 --delimiter=.`
file=`echo $names | cut -f$num --delimiter=" "`
ext=`ls | cut -f2 --delimiter=.`
filext=`echo $ext | cut -f$num --delimiter=" "`
ffmpeg -i $file.$filext -vn $file.mp3
rm $file.$filext
num=$(( $num + 1 ))
done
exit
