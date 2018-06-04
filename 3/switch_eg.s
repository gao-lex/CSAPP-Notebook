switch_eg:
	movq	%rdx, %rcx
	cmpq	$6, %rdi
	ja	.L8
	jmp	*.L4(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L8
	.quad	.L3
	.quad	.L5
	.quad	.L9
	.quad	.L8
	.quad	.L7
	.quad	.L7
	.text
.L3:
	movq	%rsi, %rax
	imulq	%rdx, %rax
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
