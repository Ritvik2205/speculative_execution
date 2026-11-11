.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 27
and sil, 93
lea ecx, qword ptr [rdi + rdi + 54]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor sil, bl
and dl, 10
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
