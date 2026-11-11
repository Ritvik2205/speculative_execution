.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
mov bl, dl
xchg bl, sil
btc ax, bx
and bl, dl
xor dl, 71
sbb al, 66
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 100
lea cx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
