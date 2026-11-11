.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, esi
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 10
add cl, 71 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
lea rbx, qword ptr [rcx + rdx + 60]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
setnl sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmovb eax, edx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 28
not eax
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 94
add cl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 79
lea rdx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
