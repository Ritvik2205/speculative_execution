.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovnb ecx, esi
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 64
xor si, 80
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
and al, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
cmovb cx, di
btc rax, 106
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
