.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 38 # instrumentation
cmovno rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
test sil, -96
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
btc ax, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
cmovnl edx, ecx
cmovs edx, ecx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
or si, 94
xor bl, dl
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cx, bx
or al, sil
cmovz rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
bt edx, edi
xor bl, cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
