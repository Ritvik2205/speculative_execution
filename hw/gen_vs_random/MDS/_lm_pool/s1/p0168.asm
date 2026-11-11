.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and ax, 31082
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
xor ax, -6793
or dil, -78
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dx, 3
test al, 22
test bx, di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and esi, 80
test cl, al
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
