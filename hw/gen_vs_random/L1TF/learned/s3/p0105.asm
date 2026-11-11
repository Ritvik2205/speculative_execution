.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
test al, -104
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 69
xor al, bl
and cl, al
or cl, cl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
sub bx, 73
or rax, 1362710293
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
