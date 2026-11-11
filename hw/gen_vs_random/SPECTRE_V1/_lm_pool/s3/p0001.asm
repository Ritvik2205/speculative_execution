.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
sub al, -1
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rdx + rsi + 80]
or bl, 19
sub bl, dl
cmp al, 46
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
jl .bb_0.3
jmp .exit_0
.bb_0.3:
cmovnp si, bx
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
xchg cl, dil
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
