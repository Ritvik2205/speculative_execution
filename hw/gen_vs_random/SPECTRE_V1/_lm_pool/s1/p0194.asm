.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 1
lea dx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
sbb dil, bl
xchg rax, rbx
xor cl, al
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
