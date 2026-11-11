.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
xor bl, bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
lea rdx, qword ptr [rcx + rsi + 85]
or al, dil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
lea cx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
