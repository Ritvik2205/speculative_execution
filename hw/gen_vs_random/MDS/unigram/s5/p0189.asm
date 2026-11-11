.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
btc rcx, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 80
cmovbe bx, cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and dil, -67 # instrumentation
cmovnle rcx, rdi
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and bl, 20 # instrumentation
cmovo edi, esi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
cmovnp rax, rsi
cmovnl rax, rdi
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and al, -86 # instrumentation
cmovns cx, ax
cmovp cx, ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
