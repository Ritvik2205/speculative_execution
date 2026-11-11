.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 58
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
test bl, dl
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor bx, ax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
xor ax, 25554
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
mul al
sub dl, sil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
and dl, dil
adc bl, 89
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
add bl, -18 # instrumentation
mov rax, rsi
or al, 109
xchg ecx, ebx
xor sil, dil
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
test bl, 0
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
cmovnle eax, ebx
and al, dil
cmovs edi, edx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
adc bl, 89
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 52
cmovbe si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
