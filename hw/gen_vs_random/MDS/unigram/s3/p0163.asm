.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
and di, cx
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
cmovno edi, esi
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
cmovo edx, ecx
and sil, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rcx, 34
jmp .bb_0.1
.bb_0.1:
cmovz rbx, rdx
and ax, bx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
test rbx, 9
btc di, 1
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
cmovp rax, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
