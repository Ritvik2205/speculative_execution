.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
or esi, edx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
btc eax, 93
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
bts rsi, 89
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 81
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
xor ax, cx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and sil, bl
not dil
and ax, dx
and dl, -33 # instrumentation
cmovns rax, rax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
