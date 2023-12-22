.data
msg: .asciiz "Enter a number: "
pair_msg: .asciiz "\nLe nombre est pair"
impair_msg: .asciiz "\nLe nombre est impair"
.text
li $v0,4
la $a0,msg
syscall

li $v0,5
syscall
move $t0,$v0

bgt $t0,0,positive
blt $t0,0,negative

positive:
while:
beq $t0,0,pair
beq $t0,1,impair
sub $t0,$t0,2
j while

negative:
boucle:
beq $t0,0,pair
beq $t0,1,impair
add $t0,$t0,2
j boucle

pair:
li $v0,4
la $a0,pair_msg
syscall

li $v0,10
syscall

impair:
li $v0,4
la $a0,impair_msg
syscall

li $v0,10
syscall