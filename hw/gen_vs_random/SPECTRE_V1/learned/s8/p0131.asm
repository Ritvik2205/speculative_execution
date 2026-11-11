.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
btc edi, 24
neg dl
lea cx, qword ptr [rcx]
lea rdx, qword ptr [rbx + rdi + 44]
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
inc ecx
lea rax, qword ptr [rsi + rdi + 44]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
