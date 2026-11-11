.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
xor sil, -46
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 99
cmovz si, si
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
xor esi, 43
xor cl, 55
test ax, 18697
cmovnle dx, ax
cmovno rsi, rdi
btc si, di
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
