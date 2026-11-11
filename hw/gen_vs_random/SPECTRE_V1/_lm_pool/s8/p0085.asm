.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 79
test bl, -8
sbb cl, 105
sub dl, bl
xor dil, -37
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
cmp dil, -78
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
