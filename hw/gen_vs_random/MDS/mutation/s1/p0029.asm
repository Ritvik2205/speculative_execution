.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
bts rsi, rdi
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
xor rcx, 71
cmovnb rdi, rdx
cmovz ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
jmp .bb_0.1
.bb_0.1:
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rax, 41
and dl, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovno dx, si
cmovle dx, ax
and sil, 74
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovno rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
