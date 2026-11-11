.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
btc ax, 45
xor sil, -126
or al, -22
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
jmp .bb_0.1
.bb_0.1:
xor dl, -59
or al, 16
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 57
or rax, 1020005579
btr bx, 74
test sil, dil
bt edx, eax
and sil, cl
bt cx, si
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
