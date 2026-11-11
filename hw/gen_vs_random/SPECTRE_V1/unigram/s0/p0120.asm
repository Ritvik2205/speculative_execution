.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
setle bl
add cl, 11 # instrumentation
cmovns edx, edi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
imul eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
xor bl, -38
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 51
cmovle dx, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
