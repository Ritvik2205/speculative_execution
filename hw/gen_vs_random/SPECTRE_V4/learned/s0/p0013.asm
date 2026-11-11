.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
xor rcx, 112
xor ax, -6064
test al, 57
sub bl, 56
sbb dl, -62
and al, -1
cmp al, dil
cmp cl, bl
adc cl, bl
or dl, dil
and al, -118
sub al, 54
not dl
jmp .bb_0.1
.bb_0.1:
xor al, -6
adc sil, cl
sbb al, 43
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or edx, -118
and al, 85
xor cl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
