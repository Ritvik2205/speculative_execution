.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
setp dl
and rdx, 88
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
