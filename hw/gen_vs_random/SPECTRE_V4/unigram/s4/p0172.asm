.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
adc al, al
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
sub esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
imul rbx, rsi, 39
btc cx, dx
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
cmovp eax, esi
adc rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
xor ax, 13332
mov cl, 1
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
xor bl, cl
mov sil, al
imul dx, di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmovnle ebx, edx
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
sub dil, sil
add cl, -119 # instrumentation
sbb ecx, 9
add esi, 13
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovl rdi, rcx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
bswap rdx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
mov cl, al
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
adc cl, 31
and bl, bl
movzx rax, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and cx, -117
sub esi, edi
and ebx, -4
cmp al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
