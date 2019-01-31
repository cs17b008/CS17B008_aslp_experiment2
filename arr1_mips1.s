	.file	1 "arr.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,88,$31		# vars= 48, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88            ;$sp=$sp+(-48)          
	sw	$31,84($sp)            ;the value in $31 is stored at address [$sp+84] 
	sw	$fp,80($sp)            ;the value in $fp is stored at address [$sp+80] 
	sw	$16,76($sp)            ;the value in $16 is stored at address [$sp+76] 
	move	$fp,$sp                ;$fp=$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp);both above and this inst. stores the address of memory location
__gnu_local_gp
	.cprestore	16
	sw	$4,88($fp)            ;the value in $4 is stored at address [$fp+88]
	sw	$5,28($fp)            ;the value in $5 is stored at address [$sp+28]
	lw	$2,%got(__stack_chk_guard)($28);read offset of __stack_chk_guard 
	lw	$2,0($2)                        ;reads canary value of __stack_chk_guard
	sw	$2,68($fp)                      ;the value in $2 is stored at address [$fp+68] 
	li	$2,7			# 0x7   ;moves 7 into register $2 
	sw	$2,32($fp)                      ;the value in $2 is stored at address [$fp+32] 
	li	$2,5			# 0x5   ;moves 5 into register $5
	sw	$2,36($fp)                      ;the value in $2 is stored at address [$fp+36] 
	li	$2,1			# 0x1   ;moves 1 into register $2
	sw	$2,40($fp)                      ;the value in $2 is stored at address [$fp+40] 
	li	$2,2			# 0x2   ;moves 2 into register $2
	sw	$2,44($fp)                      ;the value in $2 is stored at address [$fp+44] 
	li	$2,4			# 0x4   ;moves 4 into $2
	sw	$2,48($fp)                      ;the value in $31 is stored at address [$fp+48] 
	li	$2,6			# 0x6   ;moves 6 into $2
	sw	$2,52($fp)                      ;the value in $52 is stored at address [$fp+52] 
	li	$2,8			# 0x8   ;moves 8 into $2
	sw	$2,56($fp)                       ;the value in $2 is stored at address [$fp+56] 
	sw	$0,60($fp)			;the value in $0 is stored at address [$fp+60] 
	li	$2,9			# 0x9   ;moves 9 into $2
	sw	$2,64($fp)                      ;the value in $2 is stored at address [$fp+64] 
	move	$16,$0                          ;$16=$0
	.option	pic0
	b	$L2                             ;unconditional branch to programm named $l2 
	nop      				;no operation

	.option	pic2
$L3:
	sll	$2,$16,2                        ;$2=$16<<2
	addiu	$3,$fp,72                       ;$3=$fp+72
	addu	$2,$3,$2                        ;$2=$3+$2
	lw	$3,-32($2)                      ;the value at address [$2+(-32)] is loaded into $3 
	lw	$2,36($fp)                      ;the value at address [$fp+36] is loaded into $2
	addu	$3,$3,$2                        ;$3=$3+$2
	sll	$2,$16,2                        ;$2=$16<<2
	addiu	$4,$fp,72                       ;$4=$fp+72
	addu	$2,$4,$2                        ;$2=$4+$2
	sw	$3,-32($2)                      ;the value in $3 is stored at address [$2-32] 
	addiu	$16,$16,1                       ;$16=$16+1
$L2:
	slt	$2,$16,7                        ;set on less than
	bne	$2,$0,$L3                        ;branch when not equal
	nop					;no operation

	move	$2,$0				;$2=$0
	lw	$3,%got(__stack_chk_guard)($28) ;read offset of __stack_chk_guard 
	lw	$4,68($fp)                      ;the value in $4 is stored at address [$fp+68] 
	lw	$3,0($3)                        ;the value in $3 is stored at address [$3+0] 
	beq	$4,$3,$L5                       ;branch on equal
	nop                                      ;no oeration

	lw	$2,%call16(__stack_chk_fail)($28) ;read offset of __stack_chk_guard
	move	$25,$2				  ;$25=$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25               ;jump t0 $25 and stores next instruction address in $25
	nop

$L5:
	move	$sp,$fp                     ;$sp=$fp
	lw	$31,84($sp)                 ;the value in $31 is stored at address [$sp+84]
	lw	$fp,80($sp)                 ;the value in $fp is stored at address [$sp+80]
	lw	$16,76($sp)                 ;the value in $16 is stored at address [$sp+76]
	addiu	$sp,$sp,88                  ;$sp=$sp+88
	jr	$31                         ;jump to $31
	nop                                  ;no operation

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
