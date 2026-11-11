.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ecx, eax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
bt rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test cl, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
cmovo eax, esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or dil, -78
cmovz edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
or bl, 13
or esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
btc rdi, 221
or bl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
