.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
add cl, 71 # instrumentation
cmovnle rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
add cl, -75 # instrumentation
sbb esi, 33
test dil, dil
test si, 98
mov si, -8007
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
inc esi
adc cx, di
sub rdx, 41
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
imul ax
adc edx, -125
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
adc sil, al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 74
add dil, 87 # instrumentation
cmovz edx, edi
cmovnz edi, esi
and bx, 53
mul ecx
cmp cl, al
sbb dl, -71
adc rbx, 60
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
movzx edx, al
add al, -3
add di, di
neg sil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
bt rbx, rbx
add ebx, -57
add cl, 101 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
xor sil, al
adc dx, 22
cmovp si, si
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
or al, dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
