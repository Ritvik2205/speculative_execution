.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 5
or bl, -86
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmovnp esi, esi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmp sil, dl
add cl, -106 # instrumentation
cmovno rax, rdi
cmovbe ax, di
test rcx, rcx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
and sil, sil
sub bx, 24
add al, 105 # instrumentation
cmovl edx, ecx
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
adc dl, 86
or al, al
movzx dx, al
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
dec al
btc rcx, rax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
adc al, -70
cmp cl, al
adc rsi, 82
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
add cx, 90
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub rdx, rdx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and ax, 4
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
and rcx, 29
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
sub dl, 107
sub dl, 107
neg eax
sbb dil, dil
and bx, 68
cmp al, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and di, -34
xchg rcx, rcx
imul ebx, edi, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
