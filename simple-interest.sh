#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Formula for simple interest: I = P * R * T
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    
    echo "Simple Interest: $interest"
}

# Main script
echo "Welcome to Simple Interest Calculator"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read interest rate
read -p "Enter the interest rate (in percentage): " rate

# Read time period
read -p "Enter the time period (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
