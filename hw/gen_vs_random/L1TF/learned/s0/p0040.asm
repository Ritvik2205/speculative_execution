.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
or bl, dl
bts ecx, 225
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
test esi, 28
and sil, sil
and bl, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rbx + rdx]
sub ax, -27107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
