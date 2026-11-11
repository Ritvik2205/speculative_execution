.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
sbb sil, dl
adc ebx, 54
adc esi, -66
sub al, dil
sbb al, sil
cmp ax, 7046
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
