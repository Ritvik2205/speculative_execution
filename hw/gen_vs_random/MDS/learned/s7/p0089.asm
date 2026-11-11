.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
or si, -12
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and al, 84
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and bx, 5
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
bts edx, 189
and rdx, 4
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
