.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, -105
add bl, -84 # instrumentation
cmovb ax, dx
test bx, 24072
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
cmp dl, cl
mov rsi, rax
imul rbx, rbx, 60
sbb bl, 121
add dil, -61
sub bl, -89
cmovnle edi, edx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
mul dx
movzx rdi, si
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
cmovp cx, ax
sub rbx, 101
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
mov cl, al
and edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
test dil, -5
dec dx
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
add bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
or rdi, rdx
cmovl edi, ecx
add ax, 6694
test ebx, eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
btr cx, bx
cmovnz rcx, rbx
cmovnb ebx, eax
movzx rax, bx
cmovnp edx, edi
cmp edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmovb ecx, eax
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
