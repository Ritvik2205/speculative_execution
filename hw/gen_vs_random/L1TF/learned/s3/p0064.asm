.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 83
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 97
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rsi + 8]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
cmp cl, -89
sub bl, 15
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
