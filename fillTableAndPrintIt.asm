.data

msg_t: .asciiz "\ntable: "
msg_s: .asciiz "\nEntrer The number of elements: "
msg: .asciiz "\nEnter the element number "

colone: .ascii ":"
tab_adress: .word 200
.text
la $a0,msg_t
li $v0,4
syscall

la $a0,msg_s
li $v0,4
syscall

li $v0,5
syscall

move $t0, $v0
la $t1,1
la $t3,tab_adress

boucle:
bgt $t1,$t0,fin_boucle
la $a0,msg
li $v0,4
syscall

move $a0,$t1
li $v0,1
syscall

la $a0,colone
li $v0,4
syscall

li $v0,5
syscall

continue:
sw $v0,($t3)
addi $t3,$t3,4
addi $t1,$t1,1
j boucle

fin_boucle:
la $t1,1
la $t3,tab_adress
while:
bgt $t1,$t0,fin_while
lw  $a0,($t3)
li $v0,1
syscall

addi $t3,$t3,4
addi $t1,$t1,1
j while

fin_while:
li $v0,10
syscall
