.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
sbb dil, -106
lea rcx, qword ptr [rdi]
test bl, -8
cmp al, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdi, 52
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub al, sil
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
