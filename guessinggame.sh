guessing_game() {
    local num_files=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    
    while [ $guess -ne $num_files ]; do
        read -p "Guess the number of files in the current directory: " guess
        
        if ! [[ $guess =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
        elif [ $guess -lt $num_files ]; then
            echo "Too low! Try again."
        elif [ $guess -gt $num_files ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed correctly. There are $num_files files in the current directory."
}
guessing_game
