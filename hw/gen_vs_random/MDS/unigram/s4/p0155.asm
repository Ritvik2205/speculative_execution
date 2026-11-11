.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
and cl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
btc rbx, 35
and dl, al
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and al, -26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test rbx, 90
cmovno rsi, rdx
xor di, -83
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
test esi, 1857129931
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
test rbx, 94
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
