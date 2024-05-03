# shell_scripting: Multiplication Table 
This is a shell scripting project to show the use of some basic shell scripting commands

# 1: Creating a shell script
- On your darey_training folder, create another folder named shell_scripting.

```java
    cd darey_training
    mkdir shell_scripting
```

- Create a file inside the new folder named "project3"

```java
    cd shell_scripting
    touch project.sh : The .sh extention is used to indicate a shell script.
```

- Open the file using any of the linux shell editor or IDE

    **vim project3.sh** - Using vim text editor

- Start the script with a shebang to indicate the bash location
    **#!/bin/bash**

# 2: Collect input from user for multiplication table
- Prompt the user to enter a number for the multiplaction table and save the number in a variable.

    ```java
    read -p "Enter a number for the multiplication table: " num
    ``` 
    The 'read' is used to read the input and save in variable 'num' while -p is used to display the prompt message on the screen.

- Ask the user to select the type of multiplication table, with options of 'f' for full and 'p' for partial table.


    ```java
    echo "Do you want a full table or a partial table?"
    ```
    ```java
    read -p "Enter 'f' for full and 'p' for partial: " choice
    ```


    The essence of the table choice is to determine how to generate the multiplication table. If a user selects full(f) option, a full multiplication table is generated for range of numbers between 1 and 10. If the user selects partial(p), the multiplication table is displayed based on the range of value selected.

    The selected option is saved in the variable 'choice'

- If the user selects partial table option, prompt the user to enter the start and end range between 1 and 10

```java
    if [[ "$choice" == "p" ]]; then
        echo "Enter the starting number (between 1 and 10) : "
		read start

	    echo "Enter the ending number (between 1 and 10): "
	    read end
```

    The 'echo' is used to display the prompt message on the user's screen and 'read' reads the user's input and saves in a variable e.g start.

# 3: Validate user input
- Validate the user input for the inputted range to ensure the following:
    i. The start and end values are numbers(integers), not alphabets or special characters
    ii. The start value is greater than 0
    iii. The start value is less than the end value
    iv. The end value is not greater than 10.

    if the user input is invalid, a full multiplacation table is generated.

```java
    if ! [[ "$start" =~ ^[0-9]+$ ]] || ! [[ "$end" =~ ^[0-9]+$ ]] || [[ "$start" -gt "$end" ]] || [[ "$start" -lt 1 ]] || [[ "$end" -gt 10 ]]; then
		echo "Invalid range. Showing full table instead"
	fi
```

    The ^[0-9]+$ - checks if the value entered is a number.
    "$start" -gt "$end" - checks if start value is greater than end value using the comparison operator '-gt' which means greater than
    "$start" -lt 1 - checks if the start value is less than 1 using the comparison operator -lt which means less than
    "$end" -gt 10 - Checks if the end value is greater than 10 using the greater than comparison operator.

# 4. Generate and display multiplication table according to the specified range
- Using the for loop command, iterate over the values and generate multiplication table within the specified range.

    # List form for loop 
```java
    echo "Multiplication table for $num: List Form"
    echo "---------------------"
    for i in $(seq $start $end); do
        echo "$num x $i = $((num*i))"
    done
    echo "---------------------"
```

    # C-style for loop
```java
    echo "Multiplication table for $num: C-style Form"
    echo "---------------------"
    for ((i=$start; i<=$end; i++)); do
        echo "$num x $i = $((num*i))"
    done
    echo "---------------------"
```

    The echo displays the result for each loop on the screen.




