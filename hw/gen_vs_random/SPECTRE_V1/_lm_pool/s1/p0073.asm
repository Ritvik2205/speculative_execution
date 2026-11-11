.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
inc al
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 52
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb dl, al
sub dil, cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
