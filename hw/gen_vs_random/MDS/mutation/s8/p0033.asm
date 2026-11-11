.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 51
not rbx
test cl, bl
not rax
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and al, -86 # instrumentation
cmovns dx, cx
or eax, -1777347252
btc rbx, 118
cmovbe rbx, rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or esi, -110
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovp ebx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
