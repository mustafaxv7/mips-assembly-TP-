.data
 msg_tab: .asciiz "Tableau: \n"
 msg: .asciiz "Enter The Lenght of The Table: \n"
 msg_elmt: .asciiz "Enter The element number "
 pos_msg: .asciiz "\nThe number of positives is: "
 neg_msg: .asciiz "\nThe number of negatives is: "
 average: .asciiz "\nThe average is : "
 somme: .asciiz "\nThe somme is: "
 colone: .asciiz ":"
 adresse: .word 200
.text
la $a0,msg_tab
li $v0,4
syscall

la $a0,msg
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0

li $t3,1
la $t2,adresse
li $t7,0
while:
beq $t1,$t0,fin
la $a0,msg_elmt
li $v0,4
syscall

move $a0,$t3
li $v0,1
syscall

la $a0,colone
li $v0,4
syscall

li $v0,5
syscall

move $t4,$v0
bgt $t4,0,positive
blt $t4,0,negative

continue:
sw $v0, ($t2)
addi $t2,$t2,4
addi $t1,$t1,1
addi $t3,$t3,1
add $t7,$t7,$t4
j while

positive:
addi $t5,$t5,1
j continue

negative:
addi $t6,$t6,1
j continue

#count the positive numbers of table
fin:
 move $t8,$t7
 div $t7,$t7,$t0
 la $a0,pos_msg
 li $v0,4
 syscall
 
 move $a0,$t5
 li $v0,1
 syscall

 la $a0,neg_msg
 li $v0,4
 syscall
 
 move $a0,$t6
 li $v0,1
 syscall

 la $a0,somme
 li $v0,4
 syscall
 
 move $a0,$t8
 li $v0,1
 syscall
 
 la $a0,average
 li $v0,4
 syscall
 
 move $a0,$t7
 li $v0,1
 syscall
 
li $v0,10
syscall
