.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
or dil, bl
cmp dl, -56
cmp al, 27
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
lea dx, qword ptr [rcx + rax]
lea si, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
