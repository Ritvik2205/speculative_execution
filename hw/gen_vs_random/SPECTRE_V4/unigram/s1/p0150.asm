.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmovo rsi, rcx
and al, -127
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 39
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 82
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rbx]
or ebx, 27
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and bl, dil
adc cl, al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or cl, sil
cmp rbx, 10
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
add rbx, rdx
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
movzx rsi, cl
dec al
add cl, 35
neg dl
btc si, bx
mul rbx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
movsx esi, ax
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
test dl, al
or al, 109
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
sbb edi, 86
sub edi, esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
imul cl
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
