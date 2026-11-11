.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
sub al, sil
xor eax, 55
cdq
sub al, bl
jmp .bb_0.1
.bb_0.1:
test dl, -36
add al, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
js .bb_0.2
jmp .exit_0
.bb_0.2:
test sil, dil
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
