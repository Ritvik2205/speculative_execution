.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
mov dl, sil
or dl, al
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
lea rax, qword ptr [rax + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add bl, 64 # instrumentation
sbb bl, dil
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
cmp sil, -11
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
bts ecx, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
