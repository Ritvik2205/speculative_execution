.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle si, ax
and ecx, edx
cmovnle bx, bx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test dl, 27
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
btc edx, 7
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
or rcx, -17
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
bt rsi, 238
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
