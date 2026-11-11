.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
or edx, ecx
cmovnbe eax, ebx
or rax, -285849275
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
or cl, 100
cmovz rdi, rsi
cmovnl si, bx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
cmovnb cx, si
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 83
bts rax, 117
cmovs esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
xor rax, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
