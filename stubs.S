.globl cowcleaner_can_follow_write_pte
cowcleaner_can_follow_write_pte:
	mov    %r13d,%edx
	and    $0x4010,%edx
	cmp    $0x4010,%edx
	jne    .L150
	test   $0x40,%al
	jne    .L64
.L150:
	.byte 0xe9 # jmpq
.globl cowcleaner_l150
cowcleaner_l150:
	.int 0
.L64:
	.byte 0xe9
.global cowcleaner_l64
cowcleaner_l64:
	.int 0

.globl cowcleaner_inject
cowcleaner_inject:
	andl	$0x4010,%ebx
	cmpl	$0x4010,%ebx
	jne	cowcleaner_prologue
	testb	$64, %al
	jne	.L64

.globl cowcleaner_prologue
cowcleaner_prologue:
	.byte 0x90, 0x90, 0x90, 0x90
	.byte 0x90, 0x90, 0x90, 0x90
.globl cowcleaner_epilogue
	mov    %r14,%rdi
	xor    %r15d,%r15d
cowcleaner_epilogue:
	.byte 0x90, 0x90, 0x90, 0x90
	.byte 0x90, 0x90, 0x90, 0x90
