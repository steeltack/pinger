#!/bin/bash

alias clear='printf "\033c"'

file_path="log.txt"

clear
echo "Pinger Initialized!"

while true; do
   sleep $[ ($RANDOM % 2640) + 60]s
   VALUE=$(osascript -e 'display dialog "What are you doing?" default answer "\n\n\n" 
   set best_food to text returned of result
   return best_food')

   date=$(date)

   echo $date >> $file_path
   echo $VALUE >> $file_path

   clear		
   echo "Last Ping" $date
done
