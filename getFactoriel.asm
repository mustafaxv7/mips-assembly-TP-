.data
    msg: .asciiz "Enter an integer number: "
    erreurMsg: .asciiz "Negative Numbers Has No Factoriel \n"
    result: .asciiz "The Factoriel of This Number is: "
    one: .asciiz "1\n"
.text
    li $t1,1
    li $v0,4
    la $a0,msg
    syscall
    
    li $v0,5
    syscall
    move $t0,$v0
    
    beqz $t0,do
    beq $t0,1,do 
    
    
    
    ble  $t0,-1,negativeErreur
    
    
    loop:
     beqz $t0,end
     mul $t1,$t1,$t0
     subi $t0,$t0,1
     j loop
     
     end:
       li $v0,4
       la $a0,result
       syscall
       
       li $v0,1
       move $a0,$t1
       syscall
       
       li $v0,10
       syscall
       
    
    
    do: 
    li $v0,4
    la $a0,result
    syscall
    
    li $v0,4
    la $a0,one
    syscall
    li $v0,10
    syscall
    
    negativeErreur: 
    li $v0,4
    la $a0,erreurMsg
    syscall
           
    li $v0,10
    syscall
           