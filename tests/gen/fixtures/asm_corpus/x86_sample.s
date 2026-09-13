	.text
	.globl	add_one
add_one:
	# leaf function
	movl	%edi, %eax
	addl	$1, %eax
	retq
