.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 19
mov al, sil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sub rax, -1628299544
and al, -54
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
sbb al, -14
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
