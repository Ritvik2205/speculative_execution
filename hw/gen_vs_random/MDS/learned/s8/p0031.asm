.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -124
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or cl, cl
xor al, -26
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
test dl, 9
xor sil, 27
or rdi, 21
xor rcx, -2
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and ax, 339
or sil, al
bt cx, di
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
