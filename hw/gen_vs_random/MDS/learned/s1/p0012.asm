.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
and ax, 5001
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor al, sil
test ecx, -1843375753
or bl, 43
jmp .bb_0.1
.bb_0.1:
test cl, dil
xor dl, cl
xor rbx, 89
xor al, 9
or al, -61
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
