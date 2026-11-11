.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dl, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
xor dl, cl
adc di, 64
sbb al, -112
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
sbb al, 118
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
