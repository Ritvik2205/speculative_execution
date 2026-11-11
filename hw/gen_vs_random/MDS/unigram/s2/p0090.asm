.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
btc rax, 39
xor dil, cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
cmovs esi, esi
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 96
cmovnb ecx, ecx
cmovno edi, eax
and dx, 47
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
or rax, rcx
btc rdi, rax
and dl, -73 # instrumentation
cmovns rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
