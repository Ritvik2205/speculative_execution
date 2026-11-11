.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ebx
test ebx, 22
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 41
sub rbx, 89
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 57
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmp sil, dl
lea rbx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
