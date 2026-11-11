.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 67
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
or esi, 13
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
add sil, -61
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor rcx, 38
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
lea edi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
