.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
btc si, ax
jmp .bb_0.1
.bb_0.1:
test al, -104
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
