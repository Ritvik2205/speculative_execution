.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -12
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, 79
jb .bb_0.2
jmp .exit_0
.bb_0.2:
cmovs dx, si
sbb eax, 1332762061
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
add ecx, 57
xor dl, bl
sbb dil, -106
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
