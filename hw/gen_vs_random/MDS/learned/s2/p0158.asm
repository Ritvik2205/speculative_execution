.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
not al
test cl, dl
and sil, 74
and sil, 74
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and bx, 18
or bl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor sil, cl
jmp .bb_0.1
.bb_0.1:
or sil, bl
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
