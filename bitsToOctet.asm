.data
 msg: .asciiz "\nEntrer Le nombre de bits: "
 octet: .asciiz "\nLe nombre d'octet est: "
 kilOctet: .asciiz "\nLe nombre de Kilo Octet est: "
 megaOctet: .asciiz "\nLe nombre de Mega Octet est: "
 gigaOctet: .asciiz "\nLe nombre de giga Octet est: "
 bitToOctet: .word 8
 bitToKilo: .word 1024
 .text
 la $a0,msg
 li $v0,4
 syscall
 
 li $v0,5
 syscall
 
 move $t0,$v0
 lw $t1,bitToOctet
 div $t2,$t0,$t1
 
 la $a0,octet
 li $v0,4
 syscall
 
 move $a0,$t2
 li $v0,1
 syscall
 
 
 li $v0,10
 syscall