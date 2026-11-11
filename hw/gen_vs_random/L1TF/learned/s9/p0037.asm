.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
lea ax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
sbb rax, 2044012157
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
adc al, cl
xor al, 38
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and dl, -86
xor ax, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
