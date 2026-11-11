.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor al, -26
and al, -103
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 33
btc eax, 40
or si, -12
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
bt ax, cx
and cl, -71
test sil, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or al, -75
test eax, -675944960
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
