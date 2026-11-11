.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test ax, 4430
and eax, -85386306
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
or dil, -71
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
test sil, cl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
bt dx, di
bt eax, esi
and al, -114
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
