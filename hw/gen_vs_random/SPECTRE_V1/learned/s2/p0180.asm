.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 84
sub al, -82
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
sub rcx, 13
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
btc edx, 169
lea cx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sub al, bl
and cl, bl
xor edi, 115
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
sbb al, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
