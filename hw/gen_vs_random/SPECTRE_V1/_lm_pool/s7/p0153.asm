.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
or al, 100
xor rcx, rbx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 4
lea rcx, qword ptr [rdx + rsi]
not bx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 21
lea rcx, qword ptr [rax]
sub rcx, 13
sbb sil, dil
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
