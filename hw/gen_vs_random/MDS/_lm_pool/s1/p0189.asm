.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or bl, dil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
test dl, -85
and al, 14
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, 66
test cl, dl
or bl, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
