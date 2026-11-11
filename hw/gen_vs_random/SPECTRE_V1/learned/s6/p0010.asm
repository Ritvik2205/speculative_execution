.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
add al, -13
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
or dl, 41
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 97
sbb al, 104
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
xor si, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
