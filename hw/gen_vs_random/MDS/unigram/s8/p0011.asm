.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
btc bx, bx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
cmovo ax, cx
cmovnle rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 8
and al, sil
cmovo rbx, rbx
or cl, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
btc si, bx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
bt cx, 22
cmovz rax, rax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
