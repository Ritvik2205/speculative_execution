.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
bt cx, si
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or rdx, -109
and dil, -62
and rax, 79
and bl, dl
xor rsi, -117
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or bl, -54
and sil, bl
and rsi, 93
xor rsi, -117
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
