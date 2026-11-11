.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
bts rax, rdi
test dl, sil
bt rbx, rcx
bt ebx, ecx
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
btc cx, si
btc dx, 146
xor dl, -43
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or ebx, -15
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test bl, -114
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and eax, 561041355
and bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and cl, -67 # instrumentation
cmovnle rdx, rcx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor cx, -18
cmovnbe bx, dx
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
test cl, 101
cmovo rdx, rsi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
not si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
