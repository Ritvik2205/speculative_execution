.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -2111618709
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, 45
cmovp rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
imul esi, edi
test edi, -1380439873
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add rcx, -61
bts di, 30
xor al, -31
bts rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub edx, 73
imul rdx, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb cl, 12
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
