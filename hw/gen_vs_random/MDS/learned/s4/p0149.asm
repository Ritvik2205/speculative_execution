.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and dl, cl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor dl, al
jmp .bb_0.1
.bb_0.1:
test cl, bl
test ecx, -1843375753
test al, dil
and al, 84
and al, dil
or rsi, 59
xor di, -83
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
