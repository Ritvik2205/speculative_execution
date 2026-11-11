.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
test eax, -1634766116
and rsi, 29
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and rdi, 28
xor cl, bl
and cl, sil
and rcx, 107
xor al, sil
and eax, 454700988
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
test ecx, -1843375753
test rdi, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
