.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 91
and dl, -73
xor sil, 27
test al, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test al, cl
xor al, -89
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
test bx, ax
test bl, -114
xor sil, -46
or cl, al
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
