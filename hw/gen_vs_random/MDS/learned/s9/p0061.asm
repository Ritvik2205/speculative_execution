.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and ax, -10351
and dl, cl
bts rbx, 56
and rax, 1250429750
and ebx, 50
and al, sil
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
bt si, cx
test bl, cl
test sil, dil
test rsi, 23
xor al, -19
test bl, dil
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
