.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -9
test cl, 73
or ax, -7150
and rdx, 54
xor al, dil
and rax, 452940266
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
test sil, -96
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test ecx, -1843375753
test si, 50
test eax, 1838539683
xor cl, 24
and bl, sil
and eax, 33
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
