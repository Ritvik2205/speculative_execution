.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
lea di, qword ptr [rax + rsi]
inc rdi
lea rax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
add al, 10
cmp dil, cl
and al, -54
bswap rsi
add edi, -91
js .bb_0.1
jmp .exit_0
.bb_0.1:
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
