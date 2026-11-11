.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
btc rsi, 77
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
imul cx, dx
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
adc dl, cl
and dx, -107
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
test bx, 24072
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
sbb cl, 12
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
mov dl, 81
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmp rax, 2052654950
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
add bl, 102 # instrumentation
cmovnp ebx, edx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
add sil, 3
neg rax
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
test ebx, edi
mov cl, 14
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and di, -34
or rbx, -107
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
mul dil
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -60
sbb sil, al
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
test al, dil
cmovl edx, eax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
adc dil, dl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 40
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
