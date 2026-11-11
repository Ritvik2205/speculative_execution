.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 10
cmovnl rbx, rbx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
cmovnb ax, si
bt rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
bt ecx, 53
cmovnz dx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
cmovb rsi, rax
and cl, 95 # instrumentation
cmovns rsi, rsi
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 50
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
btc rsi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
