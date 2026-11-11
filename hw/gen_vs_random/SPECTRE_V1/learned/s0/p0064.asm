.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
xchg ebx, edi
or si, 79
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub ax, 124
sub bl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test esi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
