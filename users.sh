#!/bin/bash

# Displays various info on the screen

# Display "Hello"

echo "Hello"

# Assign a value to a variable
WORD="script"

echo "$WORD"

# Demonstrate that single quotes cause variable to NOT get expanded

echo '$WORD'

#combine the variable with hard-coded text

echo "This is a shell $WORD"

#Display the contnents of the variable using an alternative syntax

echo "This is a shell ${WORD}"

# Append text to the variable

echo "${WORD}ing is fun!"

# Create a new variable

ENDING='ed'

# combine two variables

echo "This is ${WORD}${ENDING}"

# Chenge the value stored

ENDING='ing'

echo "${WORD}${ENDING} is fun"

# Reassignment

ENDING='s'

echo "You are going to write many ${WORD}${ENDING} in this class"
