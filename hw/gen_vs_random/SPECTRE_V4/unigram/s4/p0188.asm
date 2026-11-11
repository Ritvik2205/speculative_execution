.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
xor sil, al
sbb bx, 87
cmovbe ecx, eax
bt ecx, esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
cmovnbe esi, esi
and bl, dl
not rcx
adc rax, 253624080
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmp dx, -26
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
bts dx, ax
sbb cl, 35
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
add cl, 111 # instrumentation
cmovnle dx, cx
btc rax, rcx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
bts di, si
add bl, 46 # instrumentation
adc bx, ax
cmovbe dx, si
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
or bl, bl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 53
inc ax
cmp ebx, -27
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 61
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
cmovp rbx, rdi
sub cl, 78
test bl, al
inc al
sbb di, -105
xchg bl, bl
test dil, -26
test dil, -5
mov dil, 62
xor cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
