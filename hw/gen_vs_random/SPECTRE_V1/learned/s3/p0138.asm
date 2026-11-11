.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb cl, 105
xor sil, bl
sub sil, -18
adc dil, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp eax, -563371897
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp al, bl
add cl, bl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
