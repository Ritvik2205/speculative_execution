.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 70
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and sil, -103 # instrumentation
cmovns esi, esi
test dil, 46
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and cl, 114 # instrumentation
cmovz bx, di
and cl, -111
btc rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 33
cmovnb bx, si
xor sil, dl
xor rcx, 71
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
