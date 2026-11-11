.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
sbb ecx, edi
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmp cl, 10
btc esi, 88
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 95 # instrumentation
cmovnb rsi, rdi
sbb cx, 92
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
add bl, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 45
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
sbb cx, 40
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
