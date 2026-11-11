.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
xor dil, -3
and bl, -5 # instrumentation
cmovnl di, dx
cmovl rdi, rdx
and sil, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test sil, sil
and bl, 120 # instrumentation
cmovnp cx, bx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
xor al, 99
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 93
xor cl, bl
or si, si
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and cl, 68 # instrumentation
cmovns bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
cmovs ebx, ecx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rbx, 65
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
