#!/usr/bin/env bash

function congratulations {
  echo "Congratulations! Your guess is correct!"
}

function count_files {
  local files=$(ls -1 | wc -l)
  echo $files
}

file_count=$(count_files)
guess=0

while [[ $guess -ne $file_count ]]
do
  echo "Guess how many files are in the current directory:"
  read guess
  if [[ $guess -lt $file_count ]]
  then
    echo "Too low, try again."
  elif [[ $guess -gt $file_count ]]
  then
    echo "Too high, try again."
  fi
done

congratulations
