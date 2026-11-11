.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
or al, sil
jmp .bb_0.1
.bb_0.1:
or sil, cl
xor rbx, 89
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
jmp .bb_0.2
.bb_0.2:
or edi, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or dl, -89
test esi, 425331143
and ax, -10351
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
xor eax, 571592471
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
