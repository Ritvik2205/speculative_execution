.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 1 # instrumentation
add bl, -9 # instrumentation
cmovs di, bx
sub ax, si
not si
add dl, 76 # instrumentation
sbb ax, 10551
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -1 # instrumentation
nop
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
sbb sil, -19
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
cmovz eax, edx
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
