.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and ax, 37
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
add cl, bl
and eax, -409673666
and sil, 93
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
