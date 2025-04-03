#!/bin/bash

# Function to display the menu
show_menu() {
    echo "Simple Calculator"
    echo "===================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
}

# Main program loop
while true; do
    show_menu
    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            # Addition
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            # Subtraction
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            # Multiplication
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            # Division
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed!"
            else
                result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $result"
            fi
            ;;
        5)
            # Exit
            echo "Exiting the calculator. Goodbye!"
            exit 0
            ;;
        *)
            # Invalid choice
            echo "Invalid choice. Please select a number between 1 and 5."
            ;;
    esac
    echo ""  # Blank line for better readability
done

