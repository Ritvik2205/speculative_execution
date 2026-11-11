.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -107 # instrumentation
cmovz rsi, rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 13
xor edx, edx
cmovle ecx, ebx
cmovnl edx, ebx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 98
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
bt dx, bx
and cl, 8
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
cmovb esi, eax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 68
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 11
and sil, 122 # instrumentation
cmovnbe esi, edx
or rcx, rbx
cmovs ebx, ebx
test bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
