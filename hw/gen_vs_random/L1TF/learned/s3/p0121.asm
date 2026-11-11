.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
test edi, 55
bt edx, ecx
jmp .bb_0.3
.bb_0.3:
sub cl, 86
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
