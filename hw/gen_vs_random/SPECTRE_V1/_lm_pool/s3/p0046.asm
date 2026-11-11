.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
mov al, dil
add dil, 72
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, -1877933118
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
