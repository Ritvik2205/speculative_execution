.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
add ecx, 92
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 94
and cl, 58
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test rdx, 22
and cx, 17
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add al, dil
sbb sil, 108
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
or cx, dx
test edi, -1249897727
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 99
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
add rcx, 91
xor cx, 93
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
xor dil, al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
add al, 110 # instrumentation
movsx bx, al
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 62
xor rdi, rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
add dl, dil
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
sub edi, eax
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 53
bt ecx, edx
cmp di, 70
sbb edx, ebx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
