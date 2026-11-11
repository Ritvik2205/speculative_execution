.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
mov bl, cl
test dil, -83
bswap rcx
xor bl, 27
cmovp edi, ebx
and esi, 61
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
sbb ax, -30070
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
xor rcx, 112
btr edi, 54
test cl, cl
movzx eax, sil
cmovnz rdi, rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmovp rdx, rax
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
test al, al
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
imul dl
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmovnz rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
btr ax, 109
bts esi, 107
adc bl, bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp eax, -1538116527
and al, bl
dec rbx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
sub ax, 17434
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
