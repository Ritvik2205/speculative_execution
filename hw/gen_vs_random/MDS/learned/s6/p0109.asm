.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 67
test ecx, -1843375753
xor sil, 94
test al, -7
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and bl, 68
and bl, bl
xor dl, al
and si, -121
jmp .bb_0.2
.bb_0.2:
or sil, cl
or bl, al
not bl
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
