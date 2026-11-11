.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
adc dil, sil
jmp .bb_0.1
.bb_0.1:
add dil, dl
add bl, sil
sub al, 9
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
