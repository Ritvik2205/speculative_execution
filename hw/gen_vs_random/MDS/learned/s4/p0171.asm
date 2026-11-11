.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 9
and dx, 60
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and dl, -73
jmp .bb_0.1
.bb_0.1:
test bl, sil
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rax, -1701787862
and edx, -44
xor sil, -126
and ax, 5001
and di, 91
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
