.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
test al, -82
cmp al, -119
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rcx + 67]
lea rsi, qword ptr [rbx + rdi]
add al, al
sbb al, 92
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
