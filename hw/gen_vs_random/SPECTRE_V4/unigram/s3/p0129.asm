.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns bx, si
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
test al, bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovnl rcx, rdx
and al, dl
adc dil, bl
xchg rdi, rcx
sub dl, 43
cmovnp rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
add rax, rdx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 16
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
btc si, bx
test ax, 23760
cmovnbe bx, cx
xor esi, 98
add dl, 41
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
imul si, cx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 96
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
mul esi
cmp di, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmovnb ecx, edi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
bts rsi, 7
and rdx, 37
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
add bl, -109 # instrumentation
sbb eax, -2052726562
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
