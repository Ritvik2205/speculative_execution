.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rcx
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
sub di, si
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 52
cmp ebx, 80
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
mov cl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
neg si
not bl
cmp rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
movsx edx, di
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
cmovs rax, rcx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or esi, 32
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
add dl, 74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and dil, dil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
cmovnz rdi, rdx
add dil, al
cmovno rcx, rdx
cmovp rdi, rbx
imul di, dx
or cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
bts di, 72
imul eax, eax
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
cmovl ecx, ebx
cmovnp edi, edi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
