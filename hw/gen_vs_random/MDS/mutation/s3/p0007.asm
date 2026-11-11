.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1725503461
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
test cl, bl
btr eax, 51
cmovp ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and al, -86 # instrumentation
cmovns dx, cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
not rbx
not rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or esi, -110
or al, 37
btc rbx, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
