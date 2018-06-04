	.file	"temp.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB0:
	.cfi_startproc
	movq	%rdx, %rcx
	cmpq	$6, %rdi
	ja	.L8
	leaq	.L4(%rip), %r8
	movslq	(%r8,%rdi,4), %rdi
	addq	%r8, %rdi
	jmp	*%rdi
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L8-.L4
	.long	.L3-.L4
	.long	.L5-.L4
	.long	.L9-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L7-.L4
	.text
.L3:
	movq	%rdx, %rax
	imulq	%rsi, %rax
	ret
.L5:
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	jmp	.L6
.L9:
	movl	$1, %eax
.L6:
	addq	%rcx, %rax
	ret
.L7:
	movl	$1, %eax
	subq	%rdx, %rax
	ret
.L8:
	movl	$2, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg, .-switch_eg
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
