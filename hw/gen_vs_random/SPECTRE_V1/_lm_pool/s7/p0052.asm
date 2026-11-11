.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 55
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and bl, -65
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 100
or al, 19
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
movsx esi, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
cmp cl, 55
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
