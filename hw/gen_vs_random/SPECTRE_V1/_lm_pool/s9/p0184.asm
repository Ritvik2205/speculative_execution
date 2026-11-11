.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb edi, 15
cmp cl, bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
