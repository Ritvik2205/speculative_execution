.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and ax, 27239
bswap ecx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 74
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
cmp al, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
xor rcx, rdi
add esi, 37
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
or cl, 83
imul si, bx
xor bl, -126
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
cmp edx, -95
imul dx
or dil, dil
imul dil
or edx, -83
add eax, 1017938146
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
test dil, -5
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
sbb bx, 87
mov sil, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 37
or dil, bl
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
test bl, 78
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
bts eax, 67
add esi, 11
sub eax, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
adc al, al
inc cl
btc rdx, rdi
cmovs rdx, rax
sub eax, edx
sub rdx, 49
cmovle rcx, rcx
or dl, -26
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
