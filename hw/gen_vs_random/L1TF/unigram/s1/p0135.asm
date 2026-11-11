.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 88
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
lea rdx, qword ptr [rbx + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
or cl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 88
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
cmovz edi, esi
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
cmovnp cx, di
sub esi, 17
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 77
or di, 35
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
