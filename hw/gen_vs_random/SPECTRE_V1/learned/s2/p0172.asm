.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
add rcx, 23
lea ax, qword ptr [rdi + rdx + 93]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
sbb al, -107
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
