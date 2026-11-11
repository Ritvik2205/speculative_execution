.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 97
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor cl, bl
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
test dil, -116
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
