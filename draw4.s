nop
lw $t0, 0($0)    #0x00010000
lw $t1, 1($0)    #0x00800000
lw $t2, 2($0)		# 0x00810000

addiu $t2, $zero, 0
nop
nop
sw $t0, 2($0)
nop
nop
addiu $t1, $zero, 1
nop
nop
sll $t0, $t0,23
nop
nop
sw $t0, 2($0)
nop
nop

lw $t5, 3($0)   #0xdfbf7fff
nop
nop


sll $t1, $t1, 16 
nop
nop
sw $t1, 3($0)
nop
nop

addiu $s0, $zero, 31  
nop
nop

lw  $8, 2($zero)
nop
nop

lw  $8, 2($zero)			# initialize  0x00007c0
nop
nop
lw  $s0, 2($zero)			# initialize  0x00007c0
nop
nop
lw $t2, 0($0)			# x increment 0x00800000
nop
nop
lw $t3, 1($0)		# y increment 0x00010000
nop
nop

loop:
		addu $8, $8, $t0
		addiu $8, $8, 1
		
	
		sw $s0, 0($0)
		nop
		nop
		addu $s0, $s0, $t2
		nop
		nop
		
		addu $s0, $s0, $t1
		nop
		nop

		addiu $s0, $s0, 1024
		nop
		nop
		and $s0, $s0, $t5
		nop
		nop
		
		addu $t0, $t0, $t2 
		addu $t1, $t1, $t3
		beq $0, $0, loop
		nop
		nop
		beq $0, $0, loop
		beq $0, $0, loop
		beq $0, $0, loop
		beq $0, $0, loop
		
