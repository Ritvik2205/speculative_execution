.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 38 # instrumentation
cmovno rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
test sil, 17
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
btc ax, si
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovp ebx, ecx
not rax
cmovbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
not rbx
or eax, -696456144
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
btr eax, 51
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
