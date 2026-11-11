.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 8
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea edi, qword ptr [rax + rax + 98]
test dl, bl
mov sil, dl
lea di, qword ptr [rcx]
sub al, sil
jle .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
