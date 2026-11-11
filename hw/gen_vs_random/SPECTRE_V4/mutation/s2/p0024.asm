.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
cmovs esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and ax, 16313
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add bl, 76 # instrumentation
sbb edx, ebx
or eax, 1470564945
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and ax, -197
or rsi, 73
sbb dx, 2
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
imul dx, cx
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or rax, -897763206
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
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
adc eax, -689629357
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
