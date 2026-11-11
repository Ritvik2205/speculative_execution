.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or rdi, 21
and ax, -122
and sil, 74
and al, -103
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
xor rsi, -117
or rdi, 21
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
cmovbe edx, esi
test dl, bl
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
xor cl, 24
or rdi, 21
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
