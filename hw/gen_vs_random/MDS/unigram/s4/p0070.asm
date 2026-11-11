.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
not bl
test sil, sil
bt eax, 28
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and cl, -15 # instrumentation
cmovnp cx, cx
btc rsi, rdi
and al, sil
cmovnz si, di
and bl, 120 # instrumentation
cmovnp si, di
cmovnbe edx, esi
jmp .bb_0.1
.bb_0.1:
not rcx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and bl, 49 # instrumentation
cmovp rsi, rbx
xor dil, dil
and cx, -8
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
