.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, -16777
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, 1049851782
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
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
adc eax, 1378432629
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
