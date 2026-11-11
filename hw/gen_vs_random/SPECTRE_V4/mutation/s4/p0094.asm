.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
add cl, dl
dec cl
not rax
cmovno edx, esi
dec dl
and al, 75
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add dl, -12 # instrumentation
cmovp esi, eax
cmovnp bx, di
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add bl, al
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
btc dx, si
sbb dl, dl
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, 111 # instrumentation
cmovnle dx, ax
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
movzx edx, cl
adc bl, dl
not sil
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add bl, -101 # instrumentation
cmovz ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
not cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
btr bx, dx
sub cl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and ax, 62
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and al, al
sbb rsi, 117
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
