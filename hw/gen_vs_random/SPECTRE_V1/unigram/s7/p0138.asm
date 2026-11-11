.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 2
sbb al, -107
lea rdx, qword ptr [rbx + rbx + 1]
inc cl
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and cx, ax
sbb bl, 79
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe edx, edi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
or rax, rax
add cl, -123 # instrumentation
cmovnp rcx, rsi
cmovnle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
