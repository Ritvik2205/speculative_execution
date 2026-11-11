.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
setb al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, -119
adc cl, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmp bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
