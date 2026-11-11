.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or bl, bl
or sil, -78
and dil, 125
xor sil, -14
or dl, 85
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor bl, al
and cl, -19
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
