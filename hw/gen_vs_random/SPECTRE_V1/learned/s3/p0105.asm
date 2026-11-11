.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
sbb sil, dil
and al, 33
test bx, 45
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 61
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rcx]
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
