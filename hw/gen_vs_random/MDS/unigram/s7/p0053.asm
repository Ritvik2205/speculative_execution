.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
not rdx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 94
cmovnp ax, si
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
bts rdi, rbx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
bt rcx, rsi
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
btr rcx, 50
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
