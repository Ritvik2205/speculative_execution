.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add rbx, 46
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dl
sbb ebx, 35
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, -114
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, sil
sbb bl, 79
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
