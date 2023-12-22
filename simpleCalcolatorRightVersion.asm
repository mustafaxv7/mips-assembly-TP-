.data
    # for input
    firstExp: .asciiz "\nEnter the first number: "
    secondExp: .asciiz "\nEnter the second number: "
    # for choice
    msgP: .asciiz "\n--Calcolator--\n "
    exit: .asciiz "\nPress 0 if you want to exit"
    additionOp: .asciiz "\nPress 1 for Addition "
    subtractionOp: .asciiz "\nPress 2 for Subtraction"
    divisionOp: .asciiz "\nPress 3 for Division"
    multiplicationOp: .asciiz "\nPress 4 for Multiplication"

    userChoice: .asciiz "\nOperation >>: "
    result: .asciiz "Result: "

.text
    begin:
    la $a0 , msgP
    li $v0,4
    syscall
    
    # take input 1
    li $v0, 4
    la $a0, firstExp
    syscall

    li $v0, 7
    syscall

    mov.d $f4, $f0

    # take input 2
    li $v0, 4
    la $a0, secondExp
    syscall

    li $v0, 7
    syscall

    mov.d $f0, $f0

    # display choices
    la $a0,exit
    li $v0 , 4
    syscall
    
    li $v0, 4
    la $a0, additionOp
    syscall

    li $v0, 4
    la $a0, subtractionOp
    syscall

    li $v0, 4
    la $a0, divisionOp
    syscall

    li $v0, 4
    la $a0, multiplicationOp
    syscall

    # get user's choice
    li $v0, 4
    la $a0, userChoice
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    # perform the selected operation
    beq $t0, 0,end
    beq $t0, 1, addition
    beq $t0, 2, subtraction
    beq $t0, 3, division
    beq $t0, 4, multiplication
    
    #quit
     end:
     li $v0,10
     syscall

    # addition
    addition:
        add.d $f4, $f4, $f0
        j displayResult
        

    # subtraction
    subtraction:
        sub.d $f4, $f4, $f0
        j displayResult
        

    # multiplication
    multiplication:
        mul.d $f4, $f4, $f0
        j displayResult
        

    # division
    division:
        div.d $f4, $f4, $f0
        

    # display result
    displayResult:
        li $v0, 4
        la $a0, result
        syscall
      
        mov.d $f12, $f4
        li $v0, 3
        syscall
        j begin
        
        li $v0, 10
        syscall
        j begin
