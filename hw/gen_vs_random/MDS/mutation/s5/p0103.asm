.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
cmovbe rbx, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
not rax
btr eax, 51
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
btc rbx, 118
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
not rbx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
or esi, -110
or eax, -696456144
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
