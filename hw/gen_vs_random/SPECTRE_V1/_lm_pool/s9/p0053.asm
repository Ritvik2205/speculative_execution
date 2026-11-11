.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
test dl, 113
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sub al, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 124
adc cl, -19
add dil, dl
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
