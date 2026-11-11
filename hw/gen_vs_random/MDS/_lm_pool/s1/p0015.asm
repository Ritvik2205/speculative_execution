.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
xor sil, -14
xor sil, dil
or cl, 30
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test al, 91
xor cl, 98
xor di, -83
test dl, cl
test dil, -80
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
