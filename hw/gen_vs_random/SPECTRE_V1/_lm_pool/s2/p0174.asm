.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
cmp cl, al
xor dil, -37
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub bl, -6
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, cl
test bl, -8
cmp al, bl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub dx, -23
and cl, sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
