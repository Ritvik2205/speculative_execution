.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and eax, 461212071
and sil, -9
xor rax, -404206377
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
bts rbx, rdi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
jmp .bb_0.2
.bb_0.2:
test dl, sil
xor bl, 67
jmp .bb_0.3
.bb_0.3:
test al, cl
not bl
or al, -17
xor cx, -18
xor dil, al
or ax, -11837
xor bl, 67
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
