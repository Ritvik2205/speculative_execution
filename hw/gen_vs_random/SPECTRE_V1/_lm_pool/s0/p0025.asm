.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
mov bl, dil
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .exit_0
.bb_0.2:
or eax, -126
lea cx, qword ptr [rdi + rdx]
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
xor al, sil
sub sil, cl
or rdx, 92
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
