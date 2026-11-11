.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and dl, 91 # instrumentation
cmovnle ebx, ebx
and esi, 64
test ax, 6113
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
bt dx, bx
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
cmovnbe rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
xor cl, al
bts si, dx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
bt rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
btr rcx, 68
btr di, di
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
