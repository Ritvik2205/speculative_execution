.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor al, 9
test al, cl
or sil, dl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
test ebx, -2015966884
xor al, 122
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test bl, -14
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor di, -83
test ecx, -1843375753
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
