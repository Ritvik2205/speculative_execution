.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test al, -99
sbb al, -14
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
adc cl, -19
lea ax, qword ptr [rdx + rsi + 36]
xchg sil, bl
sbb al, bl
cmp ebx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
