.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 50
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
cmovp eax, esi
dec rdx
bt ax, cx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 88
bt cx, 42
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
add al, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
