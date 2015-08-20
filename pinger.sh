#!/bin/bash

file_path="tester.txt"

while true; do
   sleep $[ ($RANDOM % 2640) + 60]s
   VALUE=$(osascript -e 'display dialog "What are you doing?" default answer "\n\n\n" 
   set best_food to text returned of result
   return best_food')

   echo $(date) >> $file_path
   echo $VALUE >> $file_path
done