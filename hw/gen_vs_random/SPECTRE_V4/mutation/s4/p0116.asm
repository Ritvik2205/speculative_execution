.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
sbb ax, 1843
xor bl, 126
cmp eax, 89
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
sub ax, 24426
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
movzx eax, sil
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
test dil, -83
test cl, cl
imul dl
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
bswap rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
btr ax, 109
cmovp rdx, rax
cmp al, cl
dec rbx
mov bl, cl
bts esi, 107
and esi, 61
btr edi, 54
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
xor rcx, 112
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test al, al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmovp edi, ebx
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and al, bl
cmovnz rdi, rcx
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
