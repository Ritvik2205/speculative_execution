.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 88
add cl, -6 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
cwd
test di, 84
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and cl, al
and rax, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx cx, bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
cmp rdi, rdx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
btr bx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
