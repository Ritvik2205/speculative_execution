.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
sub bl, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, bl
lea di, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
