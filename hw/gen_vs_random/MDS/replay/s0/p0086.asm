.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 38 # instrumentation
cmovno rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
test sil, 41
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
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
or si, -12
xor bl, dl
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
