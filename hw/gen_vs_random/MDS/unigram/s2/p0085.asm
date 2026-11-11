.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdx, 94
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 62
cmovs cx, cx
xor dil, al
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
btr esi, 65
bts edi, edi
and cl, -111
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and dil, -39
and eax, -829294476
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 19
xor ax, -16696
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
