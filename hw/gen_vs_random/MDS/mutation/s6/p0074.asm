.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, 35
or esi, -110
or eax, -927349615
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
or al, 37
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
not rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
btr eax, 51
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
not rbx
cmovbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
cmovp ebx, ecx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
