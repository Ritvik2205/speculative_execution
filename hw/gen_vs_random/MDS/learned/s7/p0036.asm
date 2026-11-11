.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or dil, -41
xor al, 34
and al, bl
and cl, -111
and sil, bl
or al, 54
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test al, 22
and al, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or rax, -689609688
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
