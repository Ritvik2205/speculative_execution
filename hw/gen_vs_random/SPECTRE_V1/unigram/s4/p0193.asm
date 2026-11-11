.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dl
sbb al, -14
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
adc edx, 76
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 57
xor sil, sil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 28
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
setnz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
