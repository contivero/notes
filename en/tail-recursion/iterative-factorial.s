	.file	"iterative-factorial.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	fact
	.type	fact, @function
fact:
.LFB11:
	.cfi_startproc
	test	edi, edi          # Test whether edi is greater than, less than, or equal to 0.
	mov	eax, 1                # ret = 1;
	je	.L4                   # Go to .L4 if edi was 0
	.p2align 4,,10
	.p2align 3
.L3:
	imul	eax, edi          # ret *= n;
	sub	edi, 1                # n--;
	jne	.L3                   # if n != 0, loop once more.
	rep ret
	.p2align 4,,10
	.p2align 3
.L4:
	rep ret
	.cfi_endproc
.LFE11:
	.size	fact, .-fact
	.ident	"GCC: (GNU) 7.3.1 20180312"
	.section	.note.GNU-stack,"",@progbits
