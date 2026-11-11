.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -8
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 56
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 38
and dl, 60 # instrumentation
cmovno ebx, ebx
cmovp edi, edi
bt esi, esi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and al, -2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
btr rsi, 73
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
xor eax, 73
not cl
cmovnb ax, si
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 54
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and dil, 10
btc bx, 179
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
