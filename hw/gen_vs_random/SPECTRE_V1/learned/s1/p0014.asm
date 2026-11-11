.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
sbb dil, bl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
movsx dx, dil
or al, 19
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
lea ax, qword ptr [rdi]
cmovle di, si
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
