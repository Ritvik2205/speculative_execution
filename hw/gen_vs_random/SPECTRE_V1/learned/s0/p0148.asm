.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 67
test bl, -8
or cl, -98
add bl, sil
sub al, dl
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
mov bl, dil
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rdi + 34958]
jmp .bb_0.2
.bb_0.2:
xchg esi, ebx
sub ax, -17837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
