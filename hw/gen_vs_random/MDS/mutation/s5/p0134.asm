.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
or al, 37
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
btc rbx, 35
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovp ebx, ecx
not rax
cmovbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
not rbx
or eax, -1777347252
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
btr eax, 51
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
jmp .bb_0.1
.bb_0.1:
bts dx, cx
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
btr rbx, 193
and dl, -40 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
