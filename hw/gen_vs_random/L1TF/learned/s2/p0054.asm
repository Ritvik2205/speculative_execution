.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
adc dl, -12
lea di, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 23
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 63
add al, al
xor bl, dil
and dl, 10
cmp bl, dil
add eax, 871834813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
