.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
xor cl, al
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 25
bt edx, edi
bt cx, di
add dl, 86
jmp .bb_0.1
.bb_0.1:
test rcx, -613256812
bt ebx, esi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
