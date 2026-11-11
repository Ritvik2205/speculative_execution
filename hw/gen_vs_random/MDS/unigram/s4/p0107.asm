.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, edi
and cl, 114 # instrumentation
cmovz bx, dx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rcx, -63
cmovnp si, si
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
xor sil, bl
bts dx, di
bt rbx, 241
and bl, 53 # instrumentation
cmovnl rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
not sil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 26
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
