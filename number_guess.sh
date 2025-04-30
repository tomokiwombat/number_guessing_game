#!/bin/bash

# Define the database connection
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for the username
echo "Enter your username:"
read username

# Check if the user exists in the database
USER_INFO=$($PSQL "SELECT games_played, best_game FROM users WHERE username = '$username'")

if [[ -z $USER_INFO ]]; then
  # User doesn't exist, so add them
  echo "Welcome, $username! It looks like this is your first time here."
  # Add the new user
  $PSQL "INSERT INTO users (username) VALUES ('$username')"
else
  # User exists, get the games_played and best_game
  games_played=$(echo $USER_INFO | cut -d '|' -f 1)
  best_game=$(echo $USER_INFO | cut -d '|' -f 2)
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

# Generate a random number between 1 and 1000
secret_number=$((RANDOM % 1000 + 1))

# Initialize guesses count
guesses=0

# Start the game loop
echo "Guess the secret number between 1 and 1000:"
while true; do
  read guess
  guesses=$((guesses + 1))

  # Check if the input is an integer
  if ! [[ $guess =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  elif ((guess < secret_number)); then
    echo "It's higher than that, guess again:"
  elif ((guess > secret_number)); then
    echo "It's lower than that, guess again:"
  else
    echo "You guessed it in $guesses tries. The secret number was $secret_number. Nice job!"
    break
  fi
done

# Update the games_played and possibly the best_game
games_played=$((games_played + 1))
if [[ -z $best_game || $guesses -lt $best_game ]]; then
  best_game=$guesses
fi

# Update user stats in the database
$PSQL "UPDATE users SET games_played = $games_played, best_game = $best_game WHERE username = '$username'"
