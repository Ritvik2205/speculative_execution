.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx]
xor bl, -38
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
cmp al, dl
and bx, -118
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, bl
cmovl ebx, edx
sub dil, bl
or cl, dl
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
