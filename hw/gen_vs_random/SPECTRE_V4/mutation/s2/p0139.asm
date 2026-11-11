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
test esi, -222751961
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
cmp dl, 83
cmovp rbx, rcx
adc cl, -85
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add ax, -7857
test ax, -14473
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
xor al, 118
xor al, 30
btr rcx, rcx
add al, -86 # instrumentation
cmovnp edi, esi
or cl, sil
btc rax, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
