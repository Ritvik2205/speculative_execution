.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
xor dl, bl
and bl, sil
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor dl, cl
xor dil, al
movzx ax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
