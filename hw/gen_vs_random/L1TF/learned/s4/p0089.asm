.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
movsx ebx, al
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmp al, 27
lea rdx, qword ptr [rdi]
sub dl, cl
test rax, rsi
and dx, 96
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
