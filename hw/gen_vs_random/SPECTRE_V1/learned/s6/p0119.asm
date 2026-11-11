.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sub cl, -21
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
lea esi, qword ptr [rdi]
and cl, 86
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add di, 44
lea si, qword ptr [rcx + rsi + 69]
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
