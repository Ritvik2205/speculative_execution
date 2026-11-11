.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmp bl, al
and cl, 86
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
xchg sil, dl
lea edi, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
