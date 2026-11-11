.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, 2764
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
add bl, -4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
xor al, dil
mov rsi, 76
lea si, qword ptr [rcx + rsi]
nop
cmovnp rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp dil, sil
xor dl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
