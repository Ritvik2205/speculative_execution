.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, cl
cmp bl, dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
mov ax, 73
sbb bl, 79
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sbb dl, bl
xor rbx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
