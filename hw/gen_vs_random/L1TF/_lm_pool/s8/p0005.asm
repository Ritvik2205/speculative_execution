.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add sil, al
sbb sil, cl
add esi, -124
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 55
lea rax, qword ptr [rbx + rsi + 16229]
jmp .bb_0.2
.bb_0.2:
cmp bx, 90
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or rdx, 11
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
