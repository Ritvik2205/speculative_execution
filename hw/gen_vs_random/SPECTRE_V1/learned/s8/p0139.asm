.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
add rcx, 23
lea cx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
cmp sil, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
sub al, dl
inc edi
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
