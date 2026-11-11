.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
bt edx, edi
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
bts si, dx
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
or al, -8
test al, -59
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
cmovnle ecx, eax
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 11
xor dl, cl
or bx, 74
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
