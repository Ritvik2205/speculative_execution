.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 95
cmp rdi, 55
jmp .bb_0.1
.bb_0.1:
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 86
sub bl, 15
jmp .bb_0.3
.bb_0.3:
test cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
