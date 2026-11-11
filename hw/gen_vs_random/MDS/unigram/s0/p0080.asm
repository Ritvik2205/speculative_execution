.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovnz eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
cmovnbe rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
cmovz dx, cx
cmovbe cx, bx
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
test rdi, 24
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and cl, dil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 24
cmovz edi, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
