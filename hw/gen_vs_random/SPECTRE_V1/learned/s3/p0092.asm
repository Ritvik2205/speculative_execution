.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, cl
sbb dl, dil
adc dil, al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
sbb sil, dil
cmp cl, 78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
