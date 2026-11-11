.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 73
xor al, 99
xor al, -4
test dil, cl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor al, -19
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
xor dl, sil
bt dx, bx
or dl, al
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
test cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
