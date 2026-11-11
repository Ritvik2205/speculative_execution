.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
or al, 25
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
btc rbx, 102
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
test dl, 27
cmovz edx, edx
test eax, -571234566
test ax, 18697
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovns esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
