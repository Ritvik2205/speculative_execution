.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
add bl, 70
cmp sil, cl
cmp bl, dl
or bl, 28
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
dec dil
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
cmp cl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
