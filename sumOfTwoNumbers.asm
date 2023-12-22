.data
 msg1: .asciiz "Enter The first number: \n"
 msg2: .asciiz "Enter The second number: \n"
 result_msg: .asciiz "The sum is: "
.text
la $a0,msg1
li $v0,4
syscall

li $v0,5
syscall
 
move $t0,$v0

la $a0,msg2
li $v0,4
syscall

li $v0,5
syscall

move $t1,$v0

add $t2,$t0,$t1

la $a0,result_msg
li $v0,4
syscall

move $a0,$t2
li $v0,1
syscall

li $v0,10
syscall