.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ecx, esi
adc sil, -77
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and cl, dil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
