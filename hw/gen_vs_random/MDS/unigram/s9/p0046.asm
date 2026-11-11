.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 84
cmovnz rsi, rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
cmovl rcx, rdx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
xor bl, al
xor eax, edi
cmovnb esi, edx
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
cmovnb esi, edi
and dl, 57 # instrumentation
cmovnb dx, cx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test bx, si
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovnbe eax, esi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
