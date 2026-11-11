.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
and al, 35
and sil, -56
bts rax, 77
or dil, -41
xor dl, 34
jmp .bb_0.1
.bb_0.1:
and al, 82
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
test edx, -1561252782
jmp .bb_0.2
.bb_0.2:
xor sil, -14
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
btc eax, 40
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
bt bx, cx
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
