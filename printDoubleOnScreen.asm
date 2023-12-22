.data
   myDouble: .double 7.202
   ZeroDouble: .double 0.0
   
.text
   ldc1 $f2 , myDouble
   ldc1 $f0 , ZeroDouble
   li $v0 , 3
   add.d $f12 ,$f2 , $f0
   syscall