.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
add sil, dil
add bl, al
adc dl, 58
add dl, 56 # instrumentation
cmovle rbx, rdx
adc bx, -89
add al, -26 # instrumentation
btr eax, 94
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 86
add bl, -109 # instrumentation
sbb esi, 65
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
sub bl, 17
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 32
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 48
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
or rdx, rdi
cmp bl, dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
bswap rbx
btc cx, di
xor rdi, 71
cmovnle rdi, rdi
btc dx, 16
movzx rsi, ax
movzx si, dl
add cl, 70
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmp cl, 80
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
add rcx, rbx
cmovnp esi, esi
cmovl rdx, rbx
dec rdx
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 49
mov cl, 2
cmovnbe rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
imul sil
add cl, 106 # instrumentation
cmovnp rdx, rsi
add al, 122 # instrumentation
cmovns ecx, eax
cmp si, 46
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
