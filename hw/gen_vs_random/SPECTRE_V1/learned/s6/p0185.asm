.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
sub bl, -19
cmp sil, al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
mov cl, dl
add al, -13
add bl, dl
lea di, qword ptr [rbx]
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
