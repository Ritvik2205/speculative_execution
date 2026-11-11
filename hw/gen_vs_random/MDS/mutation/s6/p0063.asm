.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
btc edx, 7
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
cmovle si, ax
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
bt rsi, 238
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
cmovnle bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and ecx, edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
test dl, 48
or rcx, 54
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
