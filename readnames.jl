
function greet()
    print("Please enter your name: ")
    name = readline()
    print("Hey $(name)! Let's play a game!\n\n")
end

function guess_number(min = 1, max = 10)
    print(
        "A random number has been generated between $min and $(max)! It's your turn to guess it!\n",
    )
    print(
        "Do you want help with guessing the number? If you select [y]es, we will say whether to guess lower or higher.\n",
    )
    help = readline()
    if help == "Y" || help == "yes" || help == "y" || help == "YES"
        help = true
    else
        help = false
    end
    playagain = "Y"
    while playagain == "Y" || playagain == "yes" || playagain == "y" || playagain == "YES"
        random_number = rand(1:10)
        while true
            print("Enter your guess:\n")
            guess = tryparse(Int64, readline())
            if guess === nothing
                print("Bad dog!\n")
                continue
            end
            if guess == random_number
                break
            end
            if guess < min || max < guess
                print("Remember, the minimum and maximum are $min and $max respectively!\n")
                continue
            end
            if help
                if guess < random_number
                    print("Try higher!\n")
                else
                    print("Try lower!\n")
                end
            end
        end
        print("GG, you got it!\n")
        print("Do you want to play again? [y/n]\n")
        playagain = readline()
    end
    print()
end

function main()
    greet()
    guess_number(1, 50)
end

main()