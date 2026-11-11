.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
cmovnz bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
not al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
