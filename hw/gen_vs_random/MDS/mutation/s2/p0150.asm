.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
test dil, -51
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and ax, -10351
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
