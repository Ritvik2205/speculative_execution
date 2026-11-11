.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
btr edi, 54
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
cmovp rdx, rax
cmovp edi, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
xor bl, -126
btr ax, 109
sbb ax, 1843
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and esi, 2
sub ax, 24426
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
dec rbx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
imul dl
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
bswap rcx
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
adc bl, bl
bts esi, 18
cmovnz rdi, rcx
movzx eax, sil
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
cmovnz rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and al, bl
xor rcx, -111
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
test cl, cl
cmp eax, 89
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
test dil, 64
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and al, bl
test al, al
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
