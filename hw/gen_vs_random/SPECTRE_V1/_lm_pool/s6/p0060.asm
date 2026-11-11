.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
cmovno rax, rsi
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
xchg rdi, rsi
cmovnle rcx, rsi
and al, -23
or edi, 30
sbb al, 118
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
