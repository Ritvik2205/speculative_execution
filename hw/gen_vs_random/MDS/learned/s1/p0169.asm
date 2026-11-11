.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
or al, cl
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
xor al, 78
cmovle ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
cmovz esi, eax
mov si, 9
cmovnp esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and sil, 65
xor edx, 20
bts rax, 117
cmovns eax, eax
btc cx, 104
bts bx, di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
