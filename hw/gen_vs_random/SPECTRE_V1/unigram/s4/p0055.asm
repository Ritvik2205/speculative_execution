.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
lea rbx, qword ptr [rdx]
xor cl, dl
test dil, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
add al, 72 # instrumentation
cmovns dx, si
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
movsx rdx, si
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
test eax, 525596342
sbb al, al
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
