.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
add dil, -7
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add dl, 125
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub al, 9
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
xor bl, al
jmp .bb_0.2
.bb_0.2:
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
