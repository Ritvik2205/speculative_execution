.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
add cl, -123 # instrumentation
sbb cl, 4
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 100
imul rax, rdx
and dl, -104
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 16
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
movsx rax, dx
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and cx, ax
add dl, sil
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 31
cmovnl cx, bx
xchg si, cx
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
cmovnbe eax, ecx
or di, 29
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and dl, 24
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 95
cmovz rcx, rax
add dil, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 84
sub edi, eax
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
cmp ax, 26170
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
sub edx, -122
mov cl, dil
xor bl, 126
btr edi, ecx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
cmovbe si, si
adc ebx, 66
test al, dl
mov dil, 47
sub rsi, rax
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
cmovnbe rbx, rsi
cmovle rcx, rbx
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
