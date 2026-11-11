.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and cl, cl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 89
or si, 94
and si, -121
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test dil, -51
or al, bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test rax, 1000448998
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and ax, -12519
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
