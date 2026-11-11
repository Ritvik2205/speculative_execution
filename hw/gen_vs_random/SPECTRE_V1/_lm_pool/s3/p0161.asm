.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
lea si, qword ptr [rcx + rdx + 100]
sub al, -66
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 1
sub dl, -12
cmp cl, bl
mov al, bl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
