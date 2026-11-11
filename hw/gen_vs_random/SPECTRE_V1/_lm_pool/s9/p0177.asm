.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
xor bl, sil
sbb cl, dil
sub dx, -23
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
sub cl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
