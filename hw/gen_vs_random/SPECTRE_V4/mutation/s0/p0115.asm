.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 32 # instrumentation
adc rax, -324435035
neg rax
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
dec dil
adc eax, -1127383570
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add al, -7 # instrumentation
btc dx, di
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
cmp al, dl
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
add al, 17 # instrumentation
cmovnle edi, edx
mul ecx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
adc ax, 29444
xor ax, 15671
adc rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
mov bl, al
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
cmovb ax, si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
not si
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnp edx, edx
mov dl, -124
sbb bx, 87
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
add cl, -69 # instrumentation
adc dl, dl
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
