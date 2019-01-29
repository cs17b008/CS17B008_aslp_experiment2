	.file	1 "switch.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	isprime
	.set	nomips16
	.set	nomicromips
	.ent	isprime
	.type	isprime, @function
isprime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	li	$2,2			# 0x2
	sw	$2,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L4:
	lw	$3,16($fp)
	lw	$2,0($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L3
	nop

	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L3:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$2,16($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	move	$3,$2
	lw	$2,0($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L4
	nop

	lw	$2,4($fp)
	bne	$2,$0,$L5
	nop

	lw	$3,16($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L5
	nop

	move	$2,$0
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L5:
	li	$2,1			# 0x1
$L6:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isprime
	.size	isprime, .-isprime
	.rdata
	.align	2
$LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,36($fp)
	addiu	$2,$fp,24
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	move	$4,$2
	.option	pic0
	jal	isprime
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L8
	nop

	li	$2,2			# 0x2
	sw	$2,28($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L8:
	lw	$2,24($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L10
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L10:
	li	$2,3			# 0x3
	sw	$2,28($fp)
$L9:
	lw	$2,28($fp)
	li	$3,2			# 0x2
	beq	$2,$3,$L12
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L13
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L11
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L12:
	lw	$2,24($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L15
	nop

	lw	$2,24($fp)
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L15:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L13:
	lw	$2,24($fp)
	sw	$2,32($fp)
	nop
	lw	$2,24($fp)
	addiu	$2,$2,20
	lw	$3,32($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L22
	nop

	lw	$5,32($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
$L22:
	nop
$L11:
	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,36($fp)
	lw	$3,0($3)
	beq	$4,$3,$L21
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L21:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
