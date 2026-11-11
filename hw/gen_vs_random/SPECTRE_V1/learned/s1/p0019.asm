.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
add dil, -75
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
setnle bl
and sil, 111
xor al, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
