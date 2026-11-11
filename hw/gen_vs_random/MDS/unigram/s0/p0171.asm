.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
or dx, 19
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
bts di, 64
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 53
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and eax, -2116875023
and bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 30
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 28
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
btc rsi, rax
or bl, 84
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
or bx, 67
cmovo cx, ax
and bl, 79
cmovle rsi, rcx
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
