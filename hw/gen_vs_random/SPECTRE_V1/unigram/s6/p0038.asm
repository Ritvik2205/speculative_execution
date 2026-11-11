.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
movsx esi, bl
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 24
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 98
mul si
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
movsx ecx, cx
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmp rdx, rdi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
