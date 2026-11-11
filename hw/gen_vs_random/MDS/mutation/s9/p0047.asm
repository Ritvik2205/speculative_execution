.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1777347252
cmovp ebx, ecx
not rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovbe rbx, rax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
btc rbx, 102
or esi, -110
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and al, -86 # instrumentation
cmovns dx, cx
btr eax, 51
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
or al, 16
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
