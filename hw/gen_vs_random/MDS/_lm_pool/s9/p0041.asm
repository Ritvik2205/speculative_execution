.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and cx, -2
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or dl, sil
and al, -114
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor ax, -5889
jmp .bb_0.1
.bb_0.1:
and si, -121
cmp al, 79
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
cmovnp rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
