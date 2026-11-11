.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 51
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
cmovnp ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
cmovbe rcx, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
xor ebx, 66
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and dl, -73 # instrumentation
cmovns rax, rbx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
