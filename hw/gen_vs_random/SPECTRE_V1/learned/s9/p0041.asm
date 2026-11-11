.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
lea cx, qword ptr [rdx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
xchg sil, dl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub cl, dil
jmp .bb_0.3
.bb_0.3:
cmovnz rax, rcx
adc eax, 1725322202
sbb cl, dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and bl, -43
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
