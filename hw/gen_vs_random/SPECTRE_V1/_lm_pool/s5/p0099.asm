.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
mov dl, sil
and dl, -111
sbb dil, cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test sil, -31
sub bl, -6
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
