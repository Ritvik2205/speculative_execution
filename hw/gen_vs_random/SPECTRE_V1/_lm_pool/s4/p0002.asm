.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
sbb ebx, 54
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add dil, dl
or bl, dil
lea rdx, qword ptr [rbx + rax + 77]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
