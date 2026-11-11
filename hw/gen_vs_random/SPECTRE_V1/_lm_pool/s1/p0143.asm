.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
inc rbx
test bl, cl
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
