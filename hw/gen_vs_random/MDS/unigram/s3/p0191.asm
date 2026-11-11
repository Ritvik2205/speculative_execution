.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
xor ecx, 33
and bl, 98
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 87
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
or bx, 91
and dil, 122 # instrumentation
cmovnb rdi, rsi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmovnp eax, edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and cx, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
bt ecx, 87
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and al, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
