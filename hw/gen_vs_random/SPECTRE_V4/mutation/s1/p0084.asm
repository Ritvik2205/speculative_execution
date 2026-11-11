.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
cmovnz rbx, rdx
cmovnz rdi, rcx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
test al, al
xor bl, 126
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
bts esi, 107
sub ax, -1908
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
dec rbx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
test cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and esi, 2
btr edi, 54
movzx eax, sil
cmp al, cl
and al, bl
mov bl, cl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
imul dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sbb ax, 75
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
cmp eax, -813838876
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
btr ax, 109
cmovp edi, ebx
test dil, -26
cmovp rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
adc bl, bl
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
