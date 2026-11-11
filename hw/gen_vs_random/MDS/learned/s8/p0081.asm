.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
btr edx, ebx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
test dil, 46
xor cl, 55
test ebx, -961564216
jmp .bb_0.1
.bb_0.1:
or rdx, -48
and al, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and al, 106
not al
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
btr rax, 29
or si, 94
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
