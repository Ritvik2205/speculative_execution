.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
sub sil, cl
and cl, dil
and bl, -43
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
cmovle rdx, rsi
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
