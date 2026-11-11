.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
test eax, 1838539683
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor dil, 81
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
not sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, 9
xor sil, al
or dl, cl
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
