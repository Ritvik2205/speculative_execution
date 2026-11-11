.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
add bl, 68
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
cmovnle rcx, rcx
lea bx, qword ptr [rcx]
lea rcx, qword ptr [rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -61
add dl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 58
or bl, al
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
lea ecx, qword ptr [rbx + rcx + 58]
cmovp esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
xor al, -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
