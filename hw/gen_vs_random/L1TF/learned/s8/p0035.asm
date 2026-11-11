.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
