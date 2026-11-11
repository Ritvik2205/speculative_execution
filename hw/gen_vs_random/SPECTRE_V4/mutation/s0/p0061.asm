.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add al, -7 # instrumentation
btc dx, di
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
mov bl, al
xor ax, 30500
mov dl, 81
add cl, -69 # instrumentation
adc dl, dl
cmovb ax, si
cmp dl, al
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
mov eax, -1056201206
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
add al, 32 # instrumentation
adc rax, -324435035
adc eax, 948001339
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mul ecx
not si
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
adc ax, -22258
neg rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
dec dil
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
sbb bx, 87
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
cmovnp edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
add al, 17 # instrumentation
cmovnle edi, edx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
