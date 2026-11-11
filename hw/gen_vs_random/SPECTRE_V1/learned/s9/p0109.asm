.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, al
lea cx, qword ptr [rbx + rdx]
xchg al, dl
sbb cl, 105
lea dx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
