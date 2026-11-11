.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dil
xchg bl, al
lea rax, qword ptr [rsi + rdx + 34]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
dec cl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 89
sbb sil, dl
test edi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
