.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc al, -82
xor dil, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 77
sub cl, sil
sub al, bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
