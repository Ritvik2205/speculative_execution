.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
cmovle si, ax
test dl, -95
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
bt rsi, 27
or rcx, 54
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
cmovnle bx, bx
btc edx, 75
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and cl, dl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
