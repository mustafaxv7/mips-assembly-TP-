.data 
 
msg: .asciiz "Entrer le nombre de mois: "
mois1: .asciiz "Le mois est: Janvier \n"
mois2: .asciiz "Le mois est: Fevrier \n"
mois3: .asciiz "Le mois est: Mars \n"
mois4: .asciiz "Le mois est: Avril \n"
mois5: .asciiz "Le mois est: Mai \n"
mois6: .asciiz "Le mois est: Juin \n"
mois7: .asciiz "Le mois est: Juillet \n"
mois8: .asciiz "Le mois est: Aout \n"
mois9: .asciiz "Le mois est: Septembre \n"
mois10: .asciiz "Le mois est: Octobre \n"
mois11: .asciiz "Le mois est: Novembre \n"
mois12: .asciiz "Le mois est: Decembre \n"
msgErr: .asciiz "Entrez un chiffre entre 1 et 12 \n "
.text
main: 
la $a0, msg 
li $v0, 4
syscall 

li $v0,5
syscall
move $t0, $v0
beq $t0,1,m1 
beq $t0,2,m2 
beq $t0,3,m3 
beq $t0,4,m4 
beq $t0,5,m5 
beq $t0,6,m6 
beq $t0,7,m7 
beq $t0,8,m8 
beq $t0,9,m9 
beq $t0,10,m10 
beq $t0,11,m11
beq $t0,12,m12
la $a0, msgErr
li $v0, 4
syscall
j main
m1: la $a0, mois1
li $v0, 4
syscall
j main
m2: la $a0, mois2
li $v0, 4
syscall
j main

m3: la $a0, mois3
li $v0, 4
syscall
j main
m4: la $a0, mois4
li $v0, 4
syscall
j main
m5: la $a0, mois5
li $v0, 4
syscall
j main
m6: la $a0, mois6
li $v0, 4
syscall
j main
m7: la $a0, mois7
li $v0, 4
syscall
j main

m8: la $a0, mois8
li $v0, 4
syscall
j main

m9: la $a0, mois9
li $v0, 4
syscall
j main
m10: la $a0, mois10
li $v0, 4
syscall
j main
m11: la $a0, mois11
li $v0, 4
syscall
j main
m12: la $a0, mois12
li $v0, 4
syscall
j main
exit: li $v0,10
syscall