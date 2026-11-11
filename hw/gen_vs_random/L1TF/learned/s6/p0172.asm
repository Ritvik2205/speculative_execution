.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
adc dil, 120
and bl, 89
jmp .bb_0.1
.bb_0.1:
test cl, 50
add dl, -1
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
