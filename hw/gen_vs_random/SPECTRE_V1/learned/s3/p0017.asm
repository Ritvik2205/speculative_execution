.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
dec bl
and dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and bl, dl
and dl, cl
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
