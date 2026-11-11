.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, esi
sbb di, -76
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
mul ax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test esi, 64
movzx rbx, sil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 10
dec ebx
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
sbb bl, 57
xor bl, 93
add cl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
cmovnle di, di
bts edx, 12
xor si, 18
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
imul dx, ax
xor dl, 22
imul rsi
cmp dil, -124
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
cmp dl, cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 17
sub cl, cl
movzx edx, dil
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
cmp rax, -120490246
cmp cx, 86
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
or esi, edx
add cl, 122 # instrumentation
cmovz rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 81
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
not dx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and dil, 96
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
