# Computer Architecture
# Author: Denia L. Del Cid
# Fall 2015
# Project 2 Test Code

# Description: This program tests that all instructions in Table A and Table B work
#		with the five-stage pipelined MIPs processor found in project2.circ

main:
#-------------------- Table A ----------------
# Test Immediate Artithmetic
i_arith:
	addiu $t0,$t0,-100		# 0xffffff9c
	andi  $t1,$t1,1			# 0
	ori   $t2,$t2,1			# 1
	xori  $t3,$t3,0			# 0
	slti  $t4,$t4,20		# 1
	sltiu $t5,$t5,-100		# 1

# Test Immediate load
i_load:
	lui $t0, 3			# 3
	
end: 	j main				#jump back to end
