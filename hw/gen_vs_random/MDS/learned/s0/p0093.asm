.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, cx
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
or dl, bl
bts rsi, 221
test dl, -85
xor dil, cl
xor cl, 15
xor dil, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or bl, -52
xor bl, al
test al, sil
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
