.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test al, 22
xor dl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or al, 74
xor ax, -4010
or al, 24
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
xor cl, 55
or edx, -1
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
