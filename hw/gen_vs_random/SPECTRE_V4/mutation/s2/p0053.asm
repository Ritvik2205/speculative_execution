.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
movzx eax, sil
and al, bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
test dil, -58
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
cmovp edi, ebx
cmovp rdx, rax
test cl, cl
imul dl
xor bl, -126
sub ax, 8246
bswap rcx
cmp eax, -813838876
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
test al, al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
bts esi, 18
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and esi, 2
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
sbb ax, 1843
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
cmovnz rbx, rdx
xor rcx, -111
mov bl, cl
cmovnz rdi, rcx
btr ax, 109
dec rbx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
adc bl, bl
and al, bl
cmp al, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
btr edi, 54
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
