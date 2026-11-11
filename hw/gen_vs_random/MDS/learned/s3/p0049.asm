.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and dil, 125
and al, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test rsi, rdi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
xor ax, -23364
and al, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and bl, 68
bts edx, 189
test ax, -20900
or cl, 119
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
