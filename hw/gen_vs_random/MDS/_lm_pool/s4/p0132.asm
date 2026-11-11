.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and edi, 23
and al, -103
test al, 91
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
test dil, 46
or sil, bl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and sil, dl
test al, 22
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor cl, 15
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test al, 91
or al, cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
