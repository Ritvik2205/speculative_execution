.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
test eax, -571234566
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
xor rdi, -9
or rax, -141551502
or bl, -125
test dl, bl
btr si, bx
or bl, sil
and rax, rsi
or sil, -49
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
