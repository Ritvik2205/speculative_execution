.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
imul al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -99
lea ax, qword ptr [rdx]
add sil, -68
mov bl, dil
and dl, sil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
