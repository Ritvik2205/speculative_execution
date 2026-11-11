.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
and eax, 561041355
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and dil, dil
test dil, sil
or ax, -20176
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rcx
or rbx, -72
and cl, -6
and bl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 18
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or rsi, 36
test cx, 401
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
