.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and ax, 5001
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test bl, -114
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
test edx, -372470678
xor al, 115
test dil, -51
and cl, al
xor al, -89
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and cl, -71
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
cmp al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
