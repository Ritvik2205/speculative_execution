.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
btr rsi, rdi
bts rbx, 56
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
btc rsi, 80
btr cx, 136
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
cmovl eax, edx
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
cmovz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnl esi, esi
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
or rdx, rax
not dil
cmovbe ebx, esi
or bl, al
btc bx, 104
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and al, 87
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
bt edx, edi
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
