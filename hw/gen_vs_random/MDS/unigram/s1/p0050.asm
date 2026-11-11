.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and dl, 49 # instrumentation
cmovp rsi, rdx
xor sil, dil
and dl, 23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
cmovnb rax, rcx
xor rdi, -9
test dl, -95
and cl, 8 # instrumentation
cmovnl rdx, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
and bl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 28
cmovz si, si
xor al, 99
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
cmovbe bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
