.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
sbb rsi, 80
cmovz rsi, rdx
lea rcx, qword ptr [rsi + rax]
add bl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test al, 15
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
