.data
msg: .asciiz "Enter A Number: "
pow_msg: .asciiz "\nEnter the Power: "
result: .asciiz "\nThe result is: "
initial: .float 1.0
.text
la $a0,msg
li $v0,4
syscall

li $v0,6
syscall



la $a0,pow_msg
li $v0,4
syscall

li $v0,5
syscall

move $t0,$v0

l.s $f1, initial
while:
     beq $t2,$t0,fin
     mul.s $f1,$f1,$f0
     add $t2,$t2,1
j while

fin:
la $a0,result
li $v0,4
syscall

mov.s $f12,$f1
li $v0,2
syscall
