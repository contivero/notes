	.file	"tail-recursive-factorial.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	test	edi, edi
	mov	eax, esi
	je	.L5
	.p2align 4,,10
	.p2align 3
.L2:
	imul	eax, edi
	sub	edi, 1
	jne	.L2
.L5:
	rep ret
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
	.ident	"GCC: (GNU) 7.3.1 20180312"
	.section	.note.GNU-stack,"",@progbits
