.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
not rbx
cmovp ebx, ecx
not rax
or esi, -110
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
or al, -75
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or eax, -900576213
btc rbx, 35
btr eax, 51
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, -86 # instrumentation
cmovns dx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
cmovbe rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
