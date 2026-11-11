.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
sub dil, 87
add al, -102
or cl, dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor si, -50
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmovs bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
