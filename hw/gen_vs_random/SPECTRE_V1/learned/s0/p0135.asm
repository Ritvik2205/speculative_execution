.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
sub dl, dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or eax, -1641258390
and rdx, -98
cmp dl, dil
xor dil, -37
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, cl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
