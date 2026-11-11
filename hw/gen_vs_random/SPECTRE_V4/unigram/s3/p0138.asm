.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and dl, sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
not ax
or di, 29
add cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
or di, bx
bts esi, 18
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 39
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 85
cmp cl, -80
add cl, -40 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
not dx
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
btr ax, 109
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
add al, 91 # instrumentation
adc al, sil
xor dil, -23
imul rdi, rax
and cl, -101
or cl, al
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
xor rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
imul eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
add al, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 38
cmovnbe ebx, edx
adc dil, dil
cmovnbe ebx, eax
bt ax, 145
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rsi]
or bl, 61
and rcx, 11
test bl, dl
and dl, bl
cmp dil, al
cmp bl, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
