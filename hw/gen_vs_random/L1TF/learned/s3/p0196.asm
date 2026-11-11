.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rcx, rax
lea ax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
mov bl, dl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 89
and dl, dil
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
