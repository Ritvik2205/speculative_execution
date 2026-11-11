.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 50
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, 57
cmovns bx, di
mov rcx, 5862286138240743445
sub al, dl
cmovo rbx, rdx
xor bx, dx
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
xor ax, 25554
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovl esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
xchg ecx, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub eax, 2
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
mov cl, cl
not dl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 47
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 56
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
