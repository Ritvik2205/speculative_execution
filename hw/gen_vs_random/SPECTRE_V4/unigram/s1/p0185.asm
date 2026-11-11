.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
add dil, -26 # instrumentation
btr edi, 53
add dl, 110 # instrumentation
movsx cx, dl
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
sub esi, edx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sbb ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
neg bl
cmovb dx, dx
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
btc dx, bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 86
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
sbb al, al
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmovs rbx, rdi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
adc eax, -79
mov al, al
imul dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
mov rdx, 22
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmovnp dx, si
movzx rdi, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 49
imul ax, bx, 76
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
test edx, 573099753
mul ax
cmovnle cx, dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
or dl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
