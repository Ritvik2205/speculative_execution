.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor al, dil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor ebx, 9
xor bl, -88
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test sil, 17
bt esi, ebx
or al, dil
xor al, -89
or dil, -71
and ax, 19224
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
