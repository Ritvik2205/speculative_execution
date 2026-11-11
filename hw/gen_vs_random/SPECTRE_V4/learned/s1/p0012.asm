.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
add rax, -1121139858
cmp rax, 2052654950
xor al, 30
adc dl, 58
add sil, bl
test bl, 110
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
sbb cl, 40
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
sbb dil, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
