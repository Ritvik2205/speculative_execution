.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
btc rdi, 221
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and cl, sil
xor cl, 15
and ax, -16061
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and dl, -73
bt cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
