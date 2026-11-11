.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
xor al, 9
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or al, cl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor cl, al
xor sil, cl
xor dil, sil
bt bx, di
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, 7
xor bl, -61
xor dl, al
test al, cl
not al
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
