.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
test sil, 13
lea rbx, qword ptr [rcx + rbx + 64]
add al, -65
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 84
adc ax, -614
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test cl, -120
sub ax, -16648
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and dil, -93
lea bx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
