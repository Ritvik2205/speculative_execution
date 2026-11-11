.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 22
xor cl, -13
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or sil, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test bl, -114
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
test dil, 46
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and dl, -73
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
