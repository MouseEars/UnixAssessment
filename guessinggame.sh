# File projects/guessinggame.sh

function compare {
  if [[ $guess -eq $fileNumber ]]
  then
    echo "You're correct! Well done!"
  elif [[ $guess -gt $fileNumber ]]
  then
    echo "That's too big, try again"
  else
    echo "That's too small, try again"
  fi
}

fileNumber=$(find "$@" -type f | wc -l)
guess=$fileNumber+6

while [[ $guess -ne $fileNumber ]]
do
  echo "How many files are in this directory? Answer: "
  read guess
  compare
done
