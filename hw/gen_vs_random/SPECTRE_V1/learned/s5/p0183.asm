.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor sil, sil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
sub sil, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, 127
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
