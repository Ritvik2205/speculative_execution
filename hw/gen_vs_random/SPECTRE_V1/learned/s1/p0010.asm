.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 41
and al, -54
xchg ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
add dil, sil
adc cl, -19
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
