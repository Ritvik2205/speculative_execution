.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
xor di, -83
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and ax, 27170
not al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
test al, cl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
test rax, -2052112368
xor al, 99
or dl, -97
test dl, dil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or sil, -78
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
