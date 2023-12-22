.data
   min: .word 60
   sec: .word 3600
   heursNum:  .asciiz "\nEntrer The Number of Heurs: "
   numberOfMinutes : .asciiz "\nThe Number of Minutes is: "
   numberOfSeconds : .asciiz "\nThe Number of Seconds is: "
   
.text
   #show the message of the screen
   la $a0 , heursNum
   li $v0 , 4
   syscall
   
   #read number of heurs from the user
   li $v0 , 5
   syscall
   move $t0, $v0
    # clacul the number of minutes
   lw $t1 , min
   mul $t2  ,$t1 , $t0
  
   la $a0,numberOfMinutes
   li $v0,4
   syscall
   
   move $a0,$t2
   li $v0 , 1
   syscall
   
   #calcul The number of seconds
   lw $t3,sec
   mul $t4, $t3,$t0
   
   la $a0, numberOfSeconds
   li $v0,4
   syscall
   
   move $a0,$t4
   li $v0,1
   syscall
   
   li $v0 ,10
   syscall
  
   
