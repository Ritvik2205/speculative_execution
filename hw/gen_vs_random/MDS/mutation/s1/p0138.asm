.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
test sil, -96
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
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
bts dword ptr [r14 + rdx], 0
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
