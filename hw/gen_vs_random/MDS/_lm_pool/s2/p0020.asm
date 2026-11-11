.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and sil, 89
jmp .bb_0.1
.bb_0.1:
and di, 99
xor dl, 34
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
test al, sil
xor al, 115
xor al, -4
xor di, -83
or al, dl
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
test esi, 425331143
test dl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
