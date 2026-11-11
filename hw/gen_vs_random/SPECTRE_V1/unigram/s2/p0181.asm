.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 37
lea ax, qword ptr [rbx + rdx + 2]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
setno dil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and dx, di
test esi, 70
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovno rax, rbx
adc dil, dil
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
cmovbe rax, rsi
cmovnp rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
