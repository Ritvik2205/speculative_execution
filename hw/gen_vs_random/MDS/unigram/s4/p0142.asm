.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, eax
btc cx, 104
and cl, -109 # instrumentation
not rsi
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
cmovs ebx, edx
and al, 73
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
btc bx, 179
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
btc ax, 10
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 48
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and bl, 97
and esi, 24
and dx, cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
