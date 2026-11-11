.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and al, -54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
cmp al, sil
sbb dl, 127
add al, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, al
lea rdx, qword ptr [rdi + rax + 50]
cmp eax, 692647572
lea rdx, qword ptr [rcx + rbx + 88]
and ax, -13240
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
