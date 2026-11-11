.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 93
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
cmovnle di, ax
xchg rdx, rsi
test ebx, 1263899340
mov rbx, 9101099553822202722
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and al, dl
or dl, 88
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 97
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 36
sub rdx, 22
add cl, -21 # instrumentation
adc rsi, 63
and ax, 35
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
btc dx, si
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
bt edx, ecx
sbb rax, 183833426
test dx, bx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnp eax, eax
imul rax, rbx, 2
cmovnl bx, ax
sbb bl, -94
not di
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
cmp rdi, 46
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
add esi, -5
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
imul esi, ecx, 5
sub cl, al
imul rsi, rax, 21
movsx edx, cl
xor si, dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
