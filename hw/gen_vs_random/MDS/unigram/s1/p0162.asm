.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdx, rbx
and bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
or ebx, eax
and bl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or rcx, 19
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnbe ax, si
and al, 93
bt rsi, rdx
and cl, 95 # instrumentation
cmovns rdi, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 67
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
or cl, 10
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
