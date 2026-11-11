.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
bt bx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 20
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor bl, al
jmp .bb_0.1
.bb_0.1:
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
