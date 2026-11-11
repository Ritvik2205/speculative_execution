.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
xor cl, -13
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 55
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
test cl, -123
jmp .bb_0.2
.bb_0.2:
and sil, al
btc ax, 16
jmp .bb_0.3
.bb_0.3:
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
