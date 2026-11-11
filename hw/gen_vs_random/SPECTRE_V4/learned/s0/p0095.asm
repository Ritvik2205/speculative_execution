.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -62
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
xor dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 88
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
or rdx, rdi
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
cmovns edx, eax
dec sil
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmp dl, 29
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovnb dx, dx
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmovnbe rbx, rax
test ecx, 6
add al, 122 # instrumentation
cmovns ecx, ebx
add sil, 26
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
not rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 14
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
test eax, 1880179600
adc dl, al
sbb al, 123
cmp al, -52
xor esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test ebx, 1263899340
cmovs rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and eax, -37
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
