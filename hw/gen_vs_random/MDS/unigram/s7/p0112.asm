.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and dil, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovb ax, si
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
cmovnle edx, edi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
cmovnp cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and bl, 120 # instrumentation
cmovnp dx, bx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
