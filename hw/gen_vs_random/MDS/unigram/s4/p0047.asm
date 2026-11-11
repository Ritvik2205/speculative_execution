.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 93
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
cmovz bx, si
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
xor rax, -404206377
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
and cl, 78 # instrumentation
cmovs bx, cx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 43
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
or dl, -31
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and sil, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
xor al, bl
cmovno rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
