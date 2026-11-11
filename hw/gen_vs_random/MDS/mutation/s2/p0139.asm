.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -4410
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and cl, -76 # instrumentation
cmovl si, ax
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and ax, -122
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
