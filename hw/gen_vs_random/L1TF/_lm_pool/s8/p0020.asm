.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
or bl, -5
xor al, bl
xor rsi, rcx
xchg cl, dil
add cl, -36
and sil, 93
bt rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
