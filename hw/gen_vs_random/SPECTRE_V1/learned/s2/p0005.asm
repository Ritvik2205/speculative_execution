.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc cl, -19
cmp bx, 61
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx]
sub cl, -47
and ax, -13240
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
