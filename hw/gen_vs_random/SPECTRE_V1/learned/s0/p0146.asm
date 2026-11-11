.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
adc ecx, 54
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmp dil, -58
test rdx, 1657596343
add bl, dil
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
