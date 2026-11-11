.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 56
cwd
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
cmovz bx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
add al, -33 # instrumentation
cmovnl ax, di
test cl, sil
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
add dil, dil
sub cx, 38
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
add eax, -1
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
