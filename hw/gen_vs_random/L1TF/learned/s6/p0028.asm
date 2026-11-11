.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 11
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
xor bl, 38
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
sbb al, dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
xor cx, 113
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
