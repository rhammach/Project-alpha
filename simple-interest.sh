#!/bin/bash

# Script to calculate simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    echo "scale=2; ($principal * $rate * $time) / 100" | bc
}

# Input values
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in %): " rate
read -p "Enter the time (in years): " time

# Calculate and display simple interest
interest=$(calculate_simple_interest $principal $rate $time)
echo "The simple interest is: \$${interest}"
