#!/bin/bash
# Multiplication table

#Prompt user to enter a number for the multiplication table
read -p "Enter a number for the multiplication table: " num

#Prompt user to enter table type
echo "Do you want a full table or a partial table?"

read -p "Enter 'f' for full and 'p' for partial: " choice

if [[ "$choice" == "p" ]]; then
	
	echo "Enter the starting number (between 1 and 10) : "
		read start

	echo "Enter the ending number (between 1 and 10): "
	read end

	#Validate range input
	if ! [[ "$start" =~ ^[0-9]+$ ]] || ! [[ "$end" =~ ^[0-9]+$ ]] || [[ "$start" -gt "$end" ]] || [[ "$start" -lt 1 ]] || [[ "$end" -gt 10 ]]; then
		echo "Invalid range. Showing full table instead"
	fi
	# Display full table instead
		start=1
		end=10
 elif [[ "$choice" == "f" ]]; then
	 start=1
	 end=10
fi

# Ask the user if they want the table in ascending or descecnding order
echo "Do you want the multiplication table in ascending or descending order:"
read -p "Enter 'a' for ascending and 'd' for descending: " display

if [[ "$display" == "d" ]]; then
	echo "Multiplication Table for $num in Descending Order"
	echo "--------------------------"
	for ((i=$end; i>=$start; i--)); do
    	echo "$num x $i = $((num*i))"
	done
	echo "---------------------"
else
	# 4. Generate and display multiplication table according to the specified range
	# Using C-stlye form 
	echo "Multiplication table for $num: C-style Form"
	echo "---------------------"
	for ((i=$start; i<=$end; i++)); do
		echo "$num x $i = $((num*i))"
	done
	echo "---------------------"

	# Using List form
	echo "Multiplication table for $num: List Form"
	echo "---------------------"
	for i in $(seq $start $end); do
		echo "$num x $i = $((num*i))"
	done
	echo "---------------------"
fi




	

