
function greet()
    print("Please enter your name: ")
    name = readline()
    print("Hey $(name)! Let's play a game!\n")
    return name
end

function guess_number()
    random_number = rand(1:10)
    print(
        "A random number has been generated between 1 and 10! It's your turn to guess it!\n",
    )
    print(
        "Do you want help with guessing the number? If you select [y]es, we will say whether to guess lower or higher.",
    )
    guess = -1
    while guess != random_number
        print("Enter your guess:")
    end
end

function main()
    custom_name = greet()
    print("Making sure your name is $custom_name")
end

main()