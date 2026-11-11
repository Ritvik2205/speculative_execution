.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
adc sil, -77
add dl, 47
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
lea rax, qword ptr [rcx + rdx]
xor dil, bl
add dil, dil
test sil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
