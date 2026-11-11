.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
test dl, -85
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
or rcx, -17
and ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
btc edx, 75
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
cmovnle bx, bx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and cl, dl
bt rsi, 27
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cmovle si, ax
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
