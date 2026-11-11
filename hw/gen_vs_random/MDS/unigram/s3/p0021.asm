.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
bt rbx, rsi
xor al, cl
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 65
bts bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and cl, 95 # instrumentation
cmovns rax, rax
xor cl, 122
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and al, 126
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 53
bt ax, cx
cmovz eax, edx
or edi, 54
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 35
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
