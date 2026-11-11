.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
xor al, -19
and cl, -57
or dl, 41
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
mov dil, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
