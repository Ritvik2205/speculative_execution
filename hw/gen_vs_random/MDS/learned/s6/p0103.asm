.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and al, 35
and si, -121
jmp .bb_0.1
.bb_0.1:
or dil, al
and cl, -6
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and al, bl
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or rbx, -77
and eax, 943733866
or dl, -31
test si, 50
and di, 91
jmp .bb_0.2
.bb_0.2:
test eax, 158941032
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
