.data
msg: .asciiz "Table: "
msgN: .asciiz "\nEnter the number of elements: "
msgE: .asciiz "\nEnter element number "
colone: .asciiz ":"
search: .asciiz "\nEnter the element you are searching for: "
index: .asciiz "\nThe element is at index: "
address: .word 200
.text

# Print "Table: "
li $v0, 4
la $a0, msg
syscall

# Print "Enter the number of elements: "
li $v0, 4
la $a0, msgN
syscall

# Read the number of elements
li $v0, 5
syscall
move $t0, $v0

# Print "Enter the element you are searching for: "
li $v0, 4
la $a0, search
syscall

# Read the element to search for
li $v0, 5
syscall
move $t3, $v0

# Initialize loop counter
li $t1, 1
# Load the address where the elements will be stored
la $t2, address

while:
    # Check if the loop counter is greater than the total number of elements
    bgt $t1, $t0, fin

    # Print "Enter element number "
    li $v0, 4
    la $a0, msgE
    syscall

    # Print the current element number
    move $a0, $t1
    li $v0, 1
    syscall

    # Print ":"
    li $v0, 4
    la $a0, colone
    syscall

    # Read the current element value
    li $v0, 5
    syscall
    move $t4, $v0

    # Compare the current element value with the search value
    beq $t4, $t3, do

    # Store the current element value at the specified address
    sw $t4, ($t2)
    # Move to the next address
    addi $t2, $t2, 4

    # Increment the loop counter
    addi $t1, $t1, 1
    # Continue the loop
    j while

do:
    # Print "The element is at index: "
    li $v0, 4
    la $a0, index
    syscall

    # Print the index of the found element
    move $a0, $t1
    li $v0, 1
    syscall

fin:
    # Exit the program
    li $v0, 10
    syscall
