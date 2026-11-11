.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rcx + rdx]
adc cl, -34
and sil, 37
xor sil, 64
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdx]
add cl, dil
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
