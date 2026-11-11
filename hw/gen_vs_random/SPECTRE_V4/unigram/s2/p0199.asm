.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp si, bx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdx]
cmovbe bx, bx
and eax, edi
xor dx, si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
mov dil, 80
or bl, al
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
sbb si, si
sbb di, -105
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
sub rax, 2016976449
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
btr cx, di
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
add dil, -84
cmp dx, 58
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovb esi, eax
bt rcx, rbx
cmp cl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and al, 85
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and ax, 16313
xchg eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
bt ax, 84
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
or dil, dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
add dl, -35 # instrumentation
mov dil, dl
bt bx, di
mov dl, dil
test dil, -5
sbb dl, bl
cmovnb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
