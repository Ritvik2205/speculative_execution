.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and ecx, -104
test sil, -96
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
test ax, 6113
xor rcx, -2
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or dl, -8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test al, 91
or rcx, -17
jmp .bb_0.2
.bb_0.2:
or ax, -14271
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
