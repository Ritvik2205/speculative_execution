.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
sub cl, bl
or cx, 57
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
test dil, -116
or cl, cl
jb .bb_0.4
jmp .exit_0
.bb_0.4:
cmp al, dl
lea ebx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
