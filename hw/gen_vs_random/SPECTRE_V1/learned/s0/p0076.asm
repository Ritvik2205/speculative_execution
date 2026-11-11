.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
add al, bl
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
mov cl, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
