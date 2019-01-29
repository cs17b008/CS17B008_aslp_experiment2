	.file	1 "matrix.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%d \000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,120056,$31		# vars= 120016, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32752
	sw	$31,32748($sp)
	sw	$fp,32744($sp)
	sw	$16,32740($sp)
	li	$3,65536			# 0x10000
	ori	$3,$3,0x5508
	subu	$sp,$sp,$3
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	li	$4,65536			# 0x10000
	ori	$3,$4,0xd4e4
	addu	$3,$3,$fp
	sw	$2,0($3)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$4,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,3			# 0x3
	sw	$3,11064($2)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$4,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11056($2)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11060($2)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$5,65536			# 0x10000
	ori	$3,$5,0xd4e8
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$4,$5,0xd4e8
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$4,11056($2)
	li	$2,100			# 0x64
	mul	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$6,$5,0xd4e8
	addu	$6,$6,$fp
	addu	$2,$6,$2
	lw	$2,11060($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$5,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11056($3)
	sw	$3,11068($2)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$3,$5,0xd4e8
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$4,$5,0xd4e8
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$4,11056($2)
	li	$2,100			# 0x64
	mul	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$6,$5,0xd4e8
	addu	$6,$6,$fp
	addu	$2,$6,$2
	lw	$2,11060($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$5,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11060($3)
	sw	$3,-14468($2)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$5,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$5,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11060($3)
	addiu	$3,$3,1
	sw	$3,11060($2)
$L3:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11060($2)
	slt	$2,$2,4
	bne	$2,$0,$L4
	nop

	li	$2,-131072			# 0xfffffffffffe0000
	li	$4,65536			# 0x10000
	ori	$3,$4,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$4,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11056($3)
	addiu	$3,$3,1
	sw	$3,11056($2)
$L2:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11056($2)
	slt	$2,$2,4
	bne	$2,$0,$L5
	nop

	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11056($2)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L9:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11060($2)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$6,65536			# 0x10000
	ori	$3,$6,0xd4e8
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$4,$6,0xd4e8
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$4,11056($2)
	li	$2,100			# 0x64
	mul	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$5,$6,0xd4e8
	addu	$5,$5,$fp
	addu	$2,$5,$2
	lw	$2,11060($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,11068($2)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$4,$6,0xd4e8
	addu	$4,$4,$fp
	addu	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$5,$6,0xd4e8
	addu	$5,$5,$fp
	addu	$2,$5,$2
	lw	$5,11056($2)
	li	$2,100			# 0x64
	mul	$5,$5,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$7,$6,0xd4e8
	addu	$7,$7,$fp
	addu	$2,$7,$2
	lw	$2,11060($2)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,-14468($2)
	addu	$3,$3,$2
	li	$2,-65536			# 0xffffffffffff0000
	ori	$4,$6,0xd4e8
	addu	$4,$4,$fp
	addu	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$5,$6,0xd4e8
	addu	$5,$5,$fp
	addu	$2,$5,$2
	lw	$5,11056($2)
	li	$2,100			# 0x64
	mul	$5,$5,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$7,$6,0xd4e8
	addu	$7,$7,$fp
	addu	$2,$7,$2
	lw	$2,11060($2)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,25532($2)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$6,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$6,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11060($3)
	addiu	$3,$3,1
	sw	$3,11060($2)
$L7:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11060($2)
	slt	$2,$2,4
	bne	$2,$0,$L8
	nop

	li	$2,-131072			# 0xfffffffffffe0000
	li	$4,65536			# 0x10000
	ori	$3,$4,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$4,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11056($3)
	addiu	$3,$3,1
	sw	$3,11056($2)
$L6:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11056($2)
	slt	$2,$2,4
	bne	$2,$0,$L9
	nop

	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11056($2)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L13:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,11060($2)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L12:
	li	$2,-65536			# 0xffffffffffff0000
	li	$16,65536			# 0x10000
	ori	$3,$16,0xd4e8
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$4,$16,0xd4e8
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$4,11056($2)
	li	$2,100			# 0x64
	mul	$4,$4,$2
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$5,$16,0xd4e8
	addu	$5,$5,$fp
	addu	$2,$5,$2
	lw	$2,11060($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$2,25532($2)
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$16,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$16,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11060($3)
	addiu	$3,$3,1
	sw	$3,11060($2)
$L11:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11060($2)
	slt	$2,$2,4
	bne	$2,$0,$L12
	nop

	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-131072			# 0xfffffffffffe0000
	li	$4,65536			# 0x10000
	ori	$3,$4,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	li	$3,-131072			# 0xfffffffffffe0000
	ori	$4,$4,0xd4e8
	addu	$4,$4,$fp
	addu	$3,$4,$3
	lw	$3,11056($3)
	addiu	$3,$3,1
	sw	$3,11056($2)
$L10:
	li	$2,-131072			# 0xfffffffffffe0000
	li	$3,65536			# 0x10000
	ori	$3,$3,0xd4e8
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,11056($2)
	slt	$2,$2,4
	bne	$2,$0,$L13
	nop

	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	li	$4,65536			# 0x10000
	ori	$4,$4,0xd4e4
	addu	$4,$4,$fp
	lw	$4,0($4)
	lw	$3,0($3)
	beq	$4,$3,$L15
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L15:
	li	$8,65536			# 0x10000
	ori	$8,$8,0x5508
	addu	$sp,$fp,$8
	lw	$31,32748($sp)
	lw	$fp,32744($sp)
	lw	$16,32740($sp)
	addiu	$sp,$sp,32752
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
