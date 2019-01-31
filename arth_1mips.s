	.file	1 "arth.c"
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
	.frame	$fp,48,$31		# vars= 40, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48          ;$sp=$sp+(-48)          
	sw	$fp,44($sp)          ;the value in $fp is stored at address [$sp+44] 
	move	$fp,$sp              ;$fp=$sp
	sw	$4,48($fp)           ;the value in $4 is stored at address [$fp+48] 
	sw	$5,52($fp)           ;the value in $5 is stored at address [$fp+52] 
	li	$2,10			# 0xa  ;stores 10 in register $2
	sw	$2,0($fp)            ;the value in $2 is stored at address [$fp+48] 
	li	$2,20			# 0x14  ;20 is stored in register $2
	sw	$2,4($fp)            ;the value in $2 is stored at address [$fp+4] 
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	addu	$2,$3,$2             ;$2=$2+$3
	sw	$2,8($fp)            ;the value in $2 is stored at address [$fp+8]
      	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	subu	$2,$3,$2             ;$s2=$s3-$s2
	sw	$2,12($fp)           ;the value in $2 is stored at address [$fp+12] 
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	mul	$2,$3,$2             ;$2=$3*$2
	sw	$2,16($fp)           ;the value in $2 is stored at address [$fp+16]
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	teq	$2,$0,7              ;compares the values in $2 and $0 and sends trap signal when equal to 0 
	div	$0,$3,$2             ;divides values in ($3/$2) and strores in $0;quotient in ho;reminder in lo
	mfhi	$2                   ;move the hi register to $2
	mflo	$2                   ;move the lo reguster to $2
	sw	$2,20($fp)           ;the value in $2 is stored at address [$fp+20]
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	teq	$2,$0,7              ;compares the values in $2 and $0 and sends trap signal when equal to 0 
	div	$0,$3,$2             ;divides values in ($3/$2) and strores in $0;quotient in ho;reminder in lo
	mfhi	$2                   ;move the hi register to $2
	sw	$2,24($fp)           ;the value in $2 is stored at address[$fp+24]       
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	and	$2,$3,$2             ;the value at address [$fp+0] is loaded into $3
	sw	$2,28($fp)           ;the value in $2 is stored at address [$fp+28]
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)            ;the value at address [$fp+4] is loaded into $2
	or	$2,$3,$2             ;$2=$2|$3
	sw	$2,32($fp)           ;the value in $2 is stored at address [$fp+32]
	lw	$3,0($fp)            ;the value at address [$fp+0] is loaded into $3
	lw	$2,4($fp)             ;the value at address [$fp+4] is loaded into $2
	xor	$2,$3,$2               ;$2=$3^$2
	sw	$2,36($fp)           ;the value in $2 is stored at address [$fp+36]
	move	$2,$0                ;$2=$0
	move	$sp,$fp               ;$sp=$fp
	lw	$fp,44($sp)         ;the value at address [$sp+44] is loaded into $fp
	addiu	$sp,$sp,48          ;$sp=$sp+48
	jr	$31                 ;unconditionally jump to instruction whose address is in $31
	nop                         ;no operation

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
