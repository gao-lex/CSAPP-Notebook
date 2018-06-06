fic_prod_ele:
	salq	$6, %rdx
	addq	%rdx, %rdi
	salq	$2, %rcx
	leaq	(%rsi,%rcx), %rdx
	leaq	1024(%rsi,%rcx), %rsi
	movl	$0, %eax
.L2:
	movl	(%rdi), %ecx
	imull	(%rdx), %ecx
	addl	%ecx, %eax
	addq	$4, %rdi
	addq	$64, %rdx
	cmpq	%rsi, %rdx
	jne	.L2
	rep ret
