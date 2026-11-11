.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xor ax, 15671
cmovnp edx, edx
adc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mov eax, -1056201206
adc ax, 25365
cmp dl, al
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
mov bl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, -69 # instrumentation
adc dl, dl
adc eax, -3570960
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
add al, 17 # instrumentation
cmovnle edi, edx
dec dil
not si
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
cmovb ax, si
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
neg rax
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
mul ecx
add al, -7 # instrumentation
btc dx, di
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
