.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
btc edx, 75
cmovnle bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and cl, dl
cmovle si, ax
test dl, 9
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
bt rsi, 238
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
