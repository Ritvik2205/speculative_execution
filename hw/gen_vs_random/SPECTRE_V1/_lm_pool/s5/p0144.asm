.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
cmp cl, dl
adc ax, -27488
sub al, dl
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
add bl, 70
mov dl, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovnp cx, dx
sub al, bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
lea bx, qword ptr [rax + rcx + 72]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
