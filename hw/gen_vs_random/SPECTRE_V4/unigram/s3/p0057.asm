.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
sub cx, 28
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
test ax, 23760
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], si
sbb dx, 90
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
bt ecx, esi
test ax, si
cmovnb rsi, rbx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
test dx, 23
cmovo esi, ebx
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
add ax, -13169
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
imul rdx, rax, 47
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
or al, 95
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 11
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
cmp al, 19
test edi, ecx
imul rdi
and sil, al
add cl, -21 # instrumentation
adc rax, 99
test rdx, 95
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 22
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
mov rsi, rcx
adc esi, 90
cmovz edx, edx
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 80
bswap rdx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 85
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
