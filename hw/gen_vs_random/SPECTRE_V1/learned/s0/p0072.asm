.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, di
cmp ax, 7046
test bl, -8
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
mov bl, al
or bl, dil
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
lea bx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
