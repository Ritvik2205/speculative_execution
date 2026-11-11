.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and bl, -63
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
add rdi, rsi
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
movzx rdx, si
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor bx, dx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
xchg dx, bx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 87
xchg bl, bl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
imul ax, dx
btc dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rbx, 110
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
test esi, 98
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
add cl, 106 # instrumentation
cmovnp rbx, rcx
cmp bx, cx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
add al, 122 # instrumentation
cmovns esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
or dl, 88
test ebx, 1263899340
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
add bl, -18 # instrumentation
mov rdi, rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and sil, -49
cmovnb edx, esi
and si, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
