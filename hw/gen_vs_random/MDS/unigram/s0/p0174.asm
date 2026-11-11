.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 100
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
btr bx, 188
or sil, -49
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovno ax, si
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
cmovle si, bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
cmovnz rax, rdi
btc bx, 104
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and sil, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
