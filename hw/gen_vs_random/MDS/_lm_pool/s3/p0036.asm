.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
xor dil, 81
or dl, al
or sil, -78
and dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, al
test dil, dl
and al, -8
test dl, 9
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
btc si, 43
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or al, cl
or bx, 1
test sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
