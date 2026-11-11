.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edi, eax
sbb al, 118
xor eax, 55
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
lea di, qword ptr [rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
