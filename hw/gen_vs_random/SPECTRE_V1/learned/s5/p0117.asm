.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 79
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
add rcx, 23
lea ax, qword ptr [rcx + rsi + 14]
xor cl, bl
add al, -13
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 62
lea rbx, qword ptr [rdx + rcx + 4]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
