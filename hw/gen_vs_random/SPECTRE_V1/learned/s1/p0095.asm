.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
sub rdi, 93
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
