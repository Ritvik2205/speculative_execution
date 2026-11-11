.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
sub sil, -99
setnb al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
cmovbe ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 4
sbb al, 92
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
test cl, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
