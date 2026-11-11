.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
cmp dx, 18
xor sil, sil
xor dl, 19
cmovnz bx, ax
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
cmp rsi, 20
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
bswap rbx
add al, 74
imul ax, si, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
