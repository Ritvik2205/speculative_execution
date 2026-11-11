.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
bts edi, 248
or cl, 30
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
or bl, 127
xor al, -26
xor dil, bl
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
