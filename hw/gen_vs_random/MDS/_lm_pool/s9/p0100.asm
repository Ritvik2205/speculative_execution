.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 39
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and dl, -73
or al, bl
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, bl
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
test ebx, -961564216
xor al, 115
xor rcx, 71
bt cx, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
