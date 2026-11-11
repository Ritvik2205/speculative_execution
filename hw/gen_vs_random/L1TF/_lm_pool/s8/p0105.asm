.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor al, 16
cmovns rcx, rbx
cmp dil, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
