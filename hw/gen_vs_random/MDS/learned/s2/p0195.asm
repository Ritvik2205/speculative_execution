.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 30884
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
inc esi
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
cmovnb di, dx
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
btc rbx, rax
sbb ecx, 81
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 21
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
xor dl, al
bts rbx, 73
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
xor al, -28
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
cmovno esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
