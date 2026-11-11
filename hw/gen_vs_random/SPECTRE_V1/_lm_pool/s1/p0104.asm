.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
xor al, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
lea ecx, qword ptr [rax + rax + 45]
lea rsi, qword ptr [rdi + rdx]
sub dl, dil
neg rbx
mov cl, al
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
