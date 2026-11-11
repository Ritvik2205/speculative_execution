.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
sbb esi, 24
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 54
sub al, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
or edx, 14
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
