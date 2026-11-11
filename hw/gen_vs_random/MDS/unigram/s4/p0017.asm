.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and dl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and dl, 125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and cl, 101 # instrumentation
cmovno eax, ecx
or al, sil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
cmovp eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
xor ax, -23364
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
cmovp ebx, ecx
and rbx, 65
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
cmovz bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
