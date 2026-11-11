.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test sil, -55
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or bl, al
and rax, 41
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or cl, -36
and al, dl
or cl, dl
jmp .bb_0.1
.bb_0.1:
test al, 22
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
test dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
or al, -24
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
