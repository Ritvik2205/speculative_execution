.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
mov cx, ax
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor dl, dil
xor dx, 98
add bl, 92 # instrumentation
sets al
cmovz si, bx
bt rcx, rdi
xor di, ax
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
cmp bl, bl
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
