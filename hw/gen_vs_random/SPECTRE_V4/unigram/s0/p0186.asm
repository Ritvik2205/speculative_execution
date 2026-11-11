.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
bts eax, 209
sub dx, di
adc edx, 14
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movsx edx, ax
cmovo eax, ecx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 72
cmovle esi, ebx
test bl, al
or rsi, rbx
bt ebx, 228
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 54
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
adc edx, 51
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
sbb sil, dl
or dl, 56
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
xchg si, bx
test edx, 573099753
or sil, 95
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
movzx rdx, di
cmovz edx, eax
sbb al, -101
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
xor sil, 56
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 74
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 45
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
imul rax, rdx
xor cx, ax
movzx edx, dx
add bl, -26 # instrumentation
btr ebx, 8
adc dl, dl
or dl, al
sbb eax, ebx
imul bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
