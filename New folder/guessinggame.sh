
ask_for_guess() {
  echo "How many files are in the current directory?"
  read user_guess
}

correct_answer=$(ls -l | grep -v '^total' | wc -l)

while true; do
  ask_for_guess

  if [[ $user_guess -eq $correct_answer ]]; then
    echo "Congratulations! You guessed the correct number of files: $correct_answer"
    break
  elif [[ $user_guess -lt $correct_answer ]]; then
    echo "Too low! Try again."
  else
    echo "Too high! Try again."
  fi
done
